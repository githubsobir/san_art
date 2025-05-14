import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_response.freezed.dart';

@freezed
abstract class RegistrationResponseEntities with _$RegistrationResponseEntities {
  factory RegistrationResponseEntities({
    required String detail
  }) = _RegistrationResponseEntities;
}
