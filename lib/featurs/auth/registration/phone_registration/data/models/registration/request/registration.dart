import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/registration_entities/registration_entities.dart';

part 'registration.freezed.dart';
part 'registration.g.dart';

@freezed
abstract class RegistrationModel with _$RegistrationModel {
  factory RegistrationModel({
    required String username,
    required String device_name,
  }) = _RegistrationModel;

  RegistrationModel._();

  factory RegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationModelFromJson(json);

  RegistrationRequestEntities toEntity() => RegistrationRequestEntities(
        device_name: device_name,
        username: username,
      );
}
