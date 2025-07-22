import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/entities/respond/car_photo_upload_entities.dart';

part 'car_photo_response_model.freezed.dart';
part 'car_photo_response_model.g.dart';

@freezed
abstract class CarPhotoResponseModel with _$CarPhotoResponseModel {
  factory CarPhotoResponseModel({
    required bool isSuccess,
    required String message,
    required String errorCode,
  }) = _CarPhotoResponseModel;

  factory CarPhotoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CarPhotoResponseModelFromJson(json);

  CarPhotoResponseModel._();

  CarPhotoUploadEntities toEntity() => CarPhotoUploadEntities(
        isSuccess: isSuccess,
        message: message,
        errorCode: errorCode,
      );
}
