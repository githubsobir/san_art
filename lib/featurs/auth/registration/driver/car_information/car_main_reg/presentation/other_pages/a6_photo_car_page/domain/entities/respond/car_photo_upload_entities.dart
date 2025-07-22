import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_photo_upload_entities.freezed.dart';

@freezed
abstract class CarPhotoUploadEntities with _$CarPhotoUploadEntities {
   factory CarPhotoUploadEntities({
    required bool isSuccess,
    required String message,
    required String errorCode,
  }) = _CarPhotoUploadEntities;
}
