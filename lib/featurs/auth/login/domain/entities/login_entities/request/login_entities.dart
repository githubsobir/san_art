import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_entities.freezed.dart';

@freezed
abstract class LoginEntities with _$LoginEntities {
  factory LoginEntities({
    required String username,
    required String deviceName,
  }) = _LoginEntities;
}
