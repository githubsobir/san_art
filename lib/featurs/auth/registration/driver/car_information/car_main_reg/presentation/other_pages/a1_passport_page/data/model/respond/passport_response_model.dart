import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/entities/respond/possport_response.dart';

part 'passport_response_model.freezed.dart';
part 'passport_response_model.g.dart';

@freezed
abstract class PassportResponseModel with _$PassportResponseModel {
  factory PassportResponseModel({
    required String success,
    required String message,
    required String errorCode,
  }) = _PassportResponseModel;

  PassportResponseModel._();

  factory PassportResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PassportResponseModelFromJson(json);

  PassportResponseEntities toEntity() => PassportResponseEntities(
      success: success, message: message, errorCode: errorCode);
}
