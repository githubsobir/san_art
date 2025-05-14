import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_entities.freezed.dart';


@freezed
abstract class RegistrationRequestEntities with _$RegistrationRequestEntities {
   factory RegistrationRequestEntities({
    required String username,
    required String device_name,
  }) = _RegistrationRequestEntities;

}