import 'package:freezed_annotation/freezed_annotation.dart';


part 'sms_page_req_entites.freezed.dart';
part 'sms_page_req_entites.g.dart';

@freezed
abstract class LoginSmsRequestEntities with _$LoginSmsRequestEntities {
   factory LoginSmsRequestEntities({
    required String username,
    required String deviceName,
    required String code,
  }) = _LoginSmsRequestEntities;

  factory LoginSmsRequestEntities.fromJson(Map<String, dynamic> json) =>
      _$LoginSmsRequestEntitiesFromJson(json);
}