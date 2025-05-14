import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/request/sms_page_req_entites.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/respond/sms_page_entities.dart';

part 'sms_model.freezed.dart';
part 'sms_model.g.dart';

@freezed
abstract class LoginRequestModel with _$LoginRequestModel {
  factory LoginRequestModel({
    required String username,
    required String deviceName,
    required String code,})=_LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) => _$LoginRequestModelFromJson(json);

  LoginRequestModel._();

  SmsPageEntities toEntities() => SmsPageEntities(
    username: username,
    deviceId: deviceName,
    token: code,
  );
}