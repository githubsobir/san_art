import "package:freezed_annotation/freezed_annotation.dart";
import "package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/entities/respond/possport_response.dart";

part 'passport_request_model.freezed.dart';
part 'passport_request_model.g.dart';

@freezed
abstract class PassportRequestModel with _$PassportRequestModel {
  factory PassportRequestModel({
    required String serNum,
    required String datePassport,
    required String fileName,
    required String filePath,
  }) = _PassportRequestModel;

  PassportRequestModel._();

  factory PassportRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PassportRequestModelFromJson(json);

}
