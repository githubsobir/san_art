// import 'dart:async';
// import 'dart:developer';
// import 'dart:io';
//
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:san_art/core/service/injection/injection_container.dart';
// import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/entities/request/passport_entities.dart';
// import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/usecase/upload_data_passport.dart';
//
// class UploadPassportState {
//   final bool isUploading;
//   final int uploadedCount;
//   final int totalCount;
//   final String? error;
//
//   UploadPassportState({
//     this.isUploading = false,
//     this.uploadedCount = 0,
//     this.totalCount = 0,
//     this.error,
//   });
//
//   double get progress => totalCount > 0 ? uploadedCount / totalCount : 0.0;
// }
//
// final uploadPassportStateProvider =
//     StateNotifierProvider<UploadStateNotifier, UploadPassportState>(
//   (ref) => UploadStateNotifier(),
// );
//
// class UploadStateNotifier extends StateNotifier<UploadPassportState> {
//   UploadStateNotifier() : super(UploadPassportState());
//
//   void startUpload(int totalCount) {
//     state = UploadPassportState(
//       isUploading: true,
//       uploadedCount: 0,
//       totalCount: totalCount,
//     );
//   }
//
//   void updateProgress(int uploadedCount) {
//     state = UploadPassportState(
//       isUploading: true,
//       uploadedCount: uploadedCount,
//       totalCount: state.totalCount,
//     );
//   }
//
//   void uploadCompleted() {
//     state = UploadPassportState(
//       isUploading: false,
//       uploadedCount: state.totalCount,
//       totalCount: state.totalCount,
//     );
//   }
//
//   void uploadFailed(String error) {
//     state = UploadPassportState(
//       isUploading: false,
//       uploadedCount: state.uploadedCount,
//       totalCount: state.totalCount,
//       error: error,
//     );
//   }
//
//   void reset() {
//     state = UploadPassportState();
//   }
// }
//
// final passportWindowID = StateProvider<int>((ref) => 0);
// final controllerPassportExpiration = StateProvider<String>((ref) => "");
//
// final controllerPassport =
//     AsyncNotifierProvider<ControllerPassport, PassportEntities>(
//         ControllerPassport.new);
//
// final uploadPassportUseCaseProvider = Provider<UploadPassportUsecase>((ref) {
//   return getIt<UploadPassportUsecase>();
// });
//
// class ControllerPassport extends AsyncNotifier<PassportEntities> {
//   List<File> imageList = [];
//    File? file1;
//    File? file2;
//    File? file3;
//   late UploadPassportUsecase uploadPassportUsecase;
//
//   @override
//   FutureOr<PassportEntities> build() {
//     uploadPassportUsecase = ref.read(uploadPassportUseCaseProvider);
//     return PassportEntities(passportSerNum: '', additionalString: '');
//   }
//
//   void updateState() {
//     state =
//         AsyncData(PassportEntities(passportSerNum: '', additionalString: ''));
//   }
//
//   Future getImage(int index) async {
//     // state = state.copyWith(
//     //     boolGetData: false, message: "", errorMessage: "", list: []);
//     final imagePicker = ImagePicker();
//
//     final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
//
//     if (pickedFile != null) {
//       if (index == 0) {
//         file1 = File(pickedFile.path);
//       } else if (index == 1) {
//         file2 = File(pickedFile.path);
//       } else if (index == 2) {
//         file3 = File(pickedFile.path);
//       }
//     }
//   }
//
//   Future getImageCamera(int index) async {
//     // state = state.copyWith(
//     //     boolGetData: false, list: imageList, message: "", errorMessage: "");
//     final imagePicker = ImagePicker();
//
//     final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
//
//     try {
//       if (index == 0) {
//         file1 = File(pickedFile!.path);
//       } else if (index == 1) {
//         file2 = File(pickedFile!.path);
//       } else if (index == 2) {
//         file3 = File(pickedFile!.path);
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//     updateState();
//   }
//
//   setDefault() async {
//     await Future.delayed(const Duration(milliseconds: 100));
//     updateState();
//   }
//
//   setAllData({required String serNum, required String datePassport}) async {
//     ///   uploadPassportStateProvider orqali yuborilishni kontrol qilishim kerak
//     final uploadPassportState = ref.read(uploadPassportStateProvider.notifier);
//
//     List<Map<String, File>> list = [
//       {"passport_front": file1!},
//       {"passport_left": file2!},
//       {"passport_face": file3!}
//     ];
//
//     uploadPassportState.startUpload(list.length);
//
//     for (int i = 0; i < list.length; i++) {
//       try {
//         // await uploadPassportUsecase.getData(
//         //   carPhotosName: list[i].keys.first,
//         //   carPhotosPath: list[i].values.first.path,
//         // );
//
//
//         await Future.delayed(const Duration(seconds: 2));
//         uploadPassportState.updateProgress(i + 1);
//         await Future.delayed(const Duration(seconds: 1));
//         log("Yuklandi: ${list[i].keys.first} (${i + 1}/${list.length})");
//       } catch (e) {
//         log("Xatolik ${list[i].keys.first} yuklanayotganda: $e");
//         uploadPassportState
//             .uploadFailed("Xatolik ${list[i].keys.first} yuklanayotganda: $e");
//         rethrow;
//       }
//       // Barcha fayllar muvaffaqiyatli yuklandi
//
//       log("Barcha fayllar muvaffaqiyatli yuklandi!");
//     }
//     uploadPassportState.uploadCompleted();
//   }
// }
import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/entities/request/passport_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/usecase/upload_data_passport.dart';

class UploadPassportState {
  final bool isUploading;
  final int uploadedCount;
  final int totalCount;
  final String? error;

  UploadPassportState({
    this.isUploading = false,
    this.uploadedCount = 0,
    this.totalCount = 0,
    this.error,
  });

  double get progress => totalCount > 0 ? uploadedCount / totalCount : 0.0;
}

final uploadPassportStateProvider =
    StateNotifierProvider<UploadStateNotifier, UploadPassportState>(
  (ref) => UploadStateNotifier(),
);

class UploadStateNotifier extends StateNotifier<UploadPassportState> {
  UploadStateNotifier() : super(UploadPassportState());

  void startUpload(int totalCount) {
    state = UploadPassportState(
      isUploading: true,
      uploadedCount: 0,
      totalCount: totalCount,
    );
  }

  void updateProgress(int uploadedCount) {
    state = UploadPassportState(
      isUploading: true,
      uploadedCount: uploadedCount,
      totalCount: state.totalCount,
    );
  }

  void uploadCompleted() {
    state = UploadPassportState(
      isUploading: false,
      uploadedCount: state.totalCount,
      totalCount: state.totalCount,
    );
  }

  void uploadFailed(String error) {
    state = UploadPassportState(
      isUploading: false,
      uploadedCount: state.uploadedCount,
      totalCount: state.totalCount,
      error: error,
    );
  }

  void reset() {
    state = UploadPassportState();
  }
}

final passportWindowID = StateProvider<int>((ref) => 0);
final controllerPassportExpiration = StateProvider<String>((ref) => "");

final controllerPassport =
    AsyncNotifierProvider<ControllerPassport, PassportStateEntities>(
        ControllerPassport.new);

final uploadPassportUseCaseProvider = Provider<UploadPassportUsecase>((ref) {
  return getIt<UploadPassportUsecase>();
});

class ControllerPassport extends AsyncNotifier<PassportStateEntities> {
  late UploadPassportUsecase uploadPassportUsecase;
  File? file1;
  File? file2;
  File? file3;

  @override
  FutureOr<PassportStateEntities> build() {
    uploadPassportUsecase = ref.read(uploadPassportUseCaseProvider);
    return PassportStateEntities(
      id: 1,
      type: "",
      images: [],
    );
  }

  void updateState() {
    final currentState = state.valueOrNull;
    if (currentState != null) {
      state = AsyncData(currentState.copyWith());
    }
  }

  Future getImage(int index) async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    try {
      if (pickedFile != null) {
        final currentState = state.valueOrNull;
        if (currentState != null) {
          if (index == 0) {
            file1 = File(pickedFile.path);
          } else if (index == 1) {
            file2 = File(pickedFile.path);
          } else if (index == 2) {
            file3 = File(pickedFile.path);
          }
          _updateState();
        }
      }
    } catch (e) {
      log("getImageCamera()");
      log(e.toString());
    }
  }

  Future getImageCamera(int index) async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);

    try {
      if (pickedFile != null) {
        final currentState = state.valueOrNull;
        if (currentState != null) {
          if (index == 0) {
            file1 = File(pickedFile.path);
          } else if (index == 1) {
            file2 = File(pickedFile.path);
          } else if (index == 2) {
            file3 = File(pickedFile.path);
          }
          _updateState();
        }
      }
    } catch (e) {
      log("getImageCamera()");

      log(e.toString());
    }
  }

  void _updateState() {
    state = AsyncData(
      PassportStateEntities(
        id: 1,
        type: "",
        images: [],
      ),
    );
  }

  setAllData({required String serNum, required String datePassport}) async {
    final uploadPassportState = ref.read(uploadPassportStateProvider.notifier);
    final currentState = state.valueOrNull;

    if (currentState == null) return;

    List<Map<String, File>> list = [
      {"passport_front": file1!},
      {"passport_left": file2!},
      {"passport_face": file3!}
    ];

    uploadPassportState.startUpload(list.length);

    for (int i = 0; i < list.length; i++) {
      try {
        // await uploadPassportUsecase.getData(
        //   carPhotosName: list[i].keys.first,
        //   carPhotosPath: list[i].values.first.path,
        // );

        await Future.delayed(const Duration(seconds: 2));
        uploadPassportState.updateProgress(i + 1);
        await Future.delayed(const Duration(seconds: 1));
        log("Yuklandi: ${list[i].keys.first} (${i + 1}/${list.length})");
      } catch (e) {
        log("Xatolik ${list[i].keys.first} yuklanayotganda: $e");
        uploadPassportState
            .uploadFailed("Xatolik ${list[i].keys.first} yuklanayotganda: $e");
        rethrow;
      }
    }
    uploadPassportState.uploadCompleted();
  }
}
