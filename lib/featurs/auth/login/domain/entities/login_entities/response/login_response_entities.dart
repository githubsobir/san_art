import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_entities.freezed.dart';

@freezed
abstract class LoginResponseEntities with _$LoginResponseEntities {
  factory LoginResponseEntities({
    required String detail
}) = _LoginResponseEntities;
}