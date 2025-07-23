import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:san_art/core/data/hive_passport/hive_passport.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/domain/entities/request/car_licence_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/domain/repository/country_repository.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/domain/usecase/countr_usecase.dart';

final selectCountryProvider = StateProvider((ref) => "");
final selectCountryIdProvider = StateProvider((ref) => "");

final countryUsecaseProvider = Provider<CountryUsecase>(
    (ref) => CountryUsecase(getIt<CountryRepository>()));

final selectGetCountryListProvider = FutureProvider.autoDispose((ref) async {
  final usecase = ref.watch(countryUsecaseProvider);
  final result = await usecase.getCountry();

  result.when(
    (success) => log(success.toString()),
    (error) {
      log("8890");
      log(error.message.toString());
    },
  );

  return result;
});

final controllerTexCar =
    AsyncNotifierProvider.autoDispose<ControllerTexCar, CarLicenceEntities>(
        () => ControllerTexCar());

class ControllerTexCar extends AutoDisposeAsyncNotifier<CarLicenceEntities> {
  var box = HiveBoxDriverReg();

  // Keep original file variables for compatibility
  late File file1;
  late File file2;
  late File file3;
  late File file4;

  @override
  Future<CarLicenceEntities> build() async {
    return CarLicenceEntities(boolGetData: true, txtError: "");
  }

  /// Get image from gallery
  Future<void> getImage(int index) async {
    await _pickImage(index, ImageSource.gallery);
  }

  /// Get image from camera
  Future<void> getImageCamera(int index) async {
    await _pickImage(index, ImageSource.camera);
  }

  /// Private method to handle image picking logic
  Future<void> _pickImage(int index, ImageSource source) async {
    try {
      // Set loading state
      state = AsyncValue.data(
          state.value!.copyWith(boolGetData: false, txtError: ""));

      final imagePicker = ImagePicker();
      final pickedFile = await imagePicker.pickImage(source: source);

      if (pickedFile != null) {
        // Assign to original file variables
        if (index == 0) {
          file1 = File(pickedFile.path);
        } else if (index == 1) {
          file2 = File(pickedFile.path);
        } else if (index == 2) {
          file3 = File(pickedFile.path);
        } else if (index == 3) {
          file4 = File(pickedFile.path);
        }

        // Update state with success
        state = AsyncValue.data(
            state.value!.copyWith(boolGetData: true, txtError: ""));
      } else {
        // User cancelled image selection
        state = AsyncValue.data(
            state.value!.copyWith(boolGetData: true, txtError: ""));
      }
    } catch (e) {
      // Handle error
      state = AsyncValue.data(state.value!.copyWith(
          boolGetData: true,
          txtError: "Image selection failed: ${e.toString()}"));
    }
  }

  /// Save car license data to Hive box
  Future setTexCarServer({
    required String country1,
    required String txt1,
    required String txt2,
  }) async {
    try {
      // Save data to Hive using original file variables
      box.carGosRegionId = country1;
      box.carGosNumber = txt1;
      box.carGosNumTrailer = txt2;
      box.carGosFile1 = file1.path;
      box.carGosFile2 = file2.path;
      box.carGosFile3 = file3.path;
      box.carGosFile4 = file4.path;

      // Log for debugging (using print instead of log)

      final uploadLicenceState = ref.read(uploadLicenceStateProvider.notifier);

      List<Map<String, File>> list = [
        {"image1": file1},
        {"image2": file2},
        {"image3": file3},
        {"image4": file4}
      ];

      uploadLicenceState.startUpload(list.length);

      for (int i = 0; i < list.length; i++) {
        try {

          await Future.delayed(const Duration(seconds: 2));
          uploadLicenceState.updateProgress(i + 1);
          await Future.delayed(const Duration(seconds: 1));
          log("Yuklandi: ${list[i].keys.first} (${i + 1}/${list.length})");
        } catch (e) {
          log("Xatolik ${list[i].keys.first} yuklanayotganda: $e");
          uploadLicenceState.uploadFailed(
              "Xatolik ${list[i].keys.first} yuklanayotganda: $e");
          rethrow;
        }
      }
      uploadLicenceState.uploadCompleted();
      log(country1);
      log(box.carGosNumber);
      log(box.carGosNumTrailer);
      log(box.carGosFile1);
      log(box.carGosFile2);
      log(box.carGosFile3);
      log(box.carGosFile4);

      return true;
    } catch (e) {
      log(e.toString());
      state = AsyncValue.data(
          state.value!.copyWith(boolGetData: true, txtError: e.toString()));
      return false;
    }
  }
}

///
///
///

class UploadCarLicenceState {
  final bool isUploading;
  final int uploadedCount;
  final int totalCount;
  final String? error;

  UploadCarLicenceState({
    this.isUploading = false,
    this.uploadedCount = 0,
    this.totalCount = 0,
    this.error,
  });

  double get progress => totalCount > 0 ? uploadedCount / totalCount : 0.0;
}

final uploadLicenceStateProvider =
    StateNotifierProvider<UploadLicenceStateNotifier, UploadCarLicenceState>(
  (ref) => UploadLicenceStateNotifier(),
);

class UploadLicenceStateNotifier extends StateNotifier<UploadCarLicenceState> {
  UploadLicenceStateNotifier() : super(UploadCarLicenceState());

  void startUpload(int totalCount) {
    state = UploadCarLicenceState(
      isUploading: true,
      uploadedCount: 0,
      totalCount: totalCount,
    );
  }

  void updateProgress(int uploadedCount) {
    state = UploadCarLicenceState(
      isUploading: true,
      uploadedCount: uploadedCount,
      totalCount: state.totalCount,
    );
  }

  void uploadCompleted() {
    state = UploadCarLicenceState(
      isUploading: false,
      uploadedCount: state.totalCount,
      totalCount: state.totalCount,
    );
  }

  void uploadFailed(String error) {
    state = UploadCarLicenceState(
      isUploading: false,
      uploadedCount: state.uploadedCount,
      totalCount: state.totalCount,
      error: error,
    );
  }

  void reset() {
    state = UploadCarLicenceState();
  }
}
