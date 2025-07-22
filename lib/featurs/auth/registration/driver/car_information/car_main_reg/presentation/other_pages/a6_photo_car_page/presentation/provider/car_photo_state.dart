import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/entities/car_photo_entity.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/entities/request/car_photo_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/usecase/upload_images_usecase.dart';

// Upload state'i uchun model
class UploadState {
  final bool isUploading;
  final int uploadedCount;
  final int totalCount;
  final String? error;

  UploadState({
    this.isUploading = false,
    this.uploadedCount = 0,
    this.totalCount = 0,
    this.error,
  });

  double get progress => totalCount > 0 ? uploadedCount / totalCount : 0.0;
}

// Upload state provider
final uploadStateProvider = StateNotifierProvider<UploadStateNotifier, UploadState>(
      (ref) => UploadStateNotifier(),
);

class UploadStateNotifier extends StateNotifier<UploadState> {
  UploadStateNotifier() : super(UploadState());

  void startUpload(int totalCount) {
    state = UploadState(
      isUploading: true,
      uploadedCount: 0,
      totalCount: totalCount,
    );
  }

  void updateProgress(int uploadedCount) {
    state = UploadState(
      isUploading: true,
      uploadedCount: uploadedCount,
      totalCount: state.totalCount,
    );
  }

  void uploadCompleted() {
    state = UploadState(
      isUploading: false,
      uploadedCount: state.totalCount,
      totalCount: state.totalCount,
    );
  }

  void uploadFailed(String error) {
    state = UploadState(
      isUploading: false,
      uploadedCount: state.uploadedCount,
      totalCount: state.totalCount,
      error: error,
    );
  }

  void reset() {
    state = UploadState();
  }
}

final controllerCarPhoto6 =
AsyncNotifierProvider<ControllerCarPhoto6, CarPhotoEntities>(
    ControllerCarPhoto6.new);

final uploadImagesUseCaseProvider = Provider<UploadImagesUseCase>((ref) {
  return getIt<UploadImagesUseCase>();
});

class ControllerCarPhoto6 extends AsyncNotifier<CarPhotoEntities> {
  var box = HiveBoxes();

  late UploadImagesUseCase _uploadImagesUseCase;

  File? file1;
  File? file2;
  File? file3;
  File? file4;
  File? file5;

  Future getImage(int index) async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    try {
      if (pickedFile != null) {
        if (index == 0) {
          file1 = File(pickedFile.path);
        } else if (index == 1) {
          file2 = File(pickedFile.path);
        } else if (index == 2) {
          file3 = File(pickedFile.path);
        } else if (index == 3) {
          file4 = File(pickedFile.path);
        } else if (index == 4) {
          file5 = File(pickedFile.path);
        }
        _updateState();
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future getImageCamera(int index) async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);

    try {
      if (pickedFile != null) {
        if (index == 0) {
          file1 = File(pickedFile.path);
        } else if (index == 1) {
          file2 = File(pickedFile.path);
        } else if (index == 2) {
          file3 = File(pickedFile.path);
        } else if (index == 3) {
          file4 = File(pickedFile.path);
        } else if (index == 4) {
          file5 = File(pickedFile.path);
        }
        _updateState();
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void _updateState() {
    state = AsyncData(CarPhotoEntities(
      car: 1,
      type: "",
      images: [],
    ),
    );
  }

  Future setData() async {
    // Upload state notifier'ini olish
    final uploadNotifier = ref.read(uploadStateProvider.notifier);

    try {
      log("setData");
      List<Map<String, File>> list = [
        {"transport_front": file1!},
        {"transport_left": file2!},
        {"transport_behind": file3!},
        {"transport_right": file4!},
        {"row_seats": file5!},
        // {"baggage": file5!},
      ];

      // Upload jarayonini boshlash
      uploadNotifier.startUpload(list.length);

      for (int i = 0; i < list.length; i++) {
        try {
          await _uploadImagesUseCase.getData(
            carPhotos: CarPhotoEntity(
                filePath: list[i].values.first.path,
                fileName: list[i].keys.first
            ),
          );

          // Har bir yuklangan fayl uchun progress yangilash
          uploadNotifier.updateProgress(i + 1);

          log("Yuklandi: ${list[i].keys.first} (${i + 1}/${list.length})");
        } catch (e) {
          log("Xatolik ${list[i].keys.first} yuklanayotganda: $e");
          uploadNotifier.uploadFailed("Xatolik ${list[i].keys.first} yuklanayotganda: $e");
          rethrow;
        }
      }

      // Barcha fayllar muvaffaqiyatli yuklandi
      uploadNotifier.uploadCompleted();
      log("Barcha fayllar muvaffaqiyatli yuklandi!");

    } catch (e) {
      log("Umumiy xatolik: $e");
      // Agar upload notifier hali ishga tushirilmagan bo'lsa
      if (!ref.read(uploadStateProvider).isUploading) {
        uploadNotifier.uploadFailed("Umumiy xatolik: $e");
      }
    }
  }

  setDefault() async {
    await Future.delayed(const Duration(milliseconds: 100));
  }

  @override
  Future<CarPhotoEntities> build() {
    _uploadImagesUseCase = ref.read(uploadImagesUseCaseProvider);

    throw CarPhotoEntities(car: 1, type: "", images: []);
  }
}
