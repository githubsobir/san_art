import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/registration_entities/registration_response.dart';

part 'registration_response.freezed.dart';
part 'registration_response.g.dart';

@freezed
abstract class RegistrationResponseModel with _$RegistrationResponseModel {
  factory RegistrationResponseModel({
    required String detail,

  }) = _RegistrationResponseModel;

  factory RegistrationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseModelFromJson(json);

  RegistrationResponseModel._();

  RegistrationResponseEntities toEntity() => RegistrationResponseEntities(
      detail: detail);
}
