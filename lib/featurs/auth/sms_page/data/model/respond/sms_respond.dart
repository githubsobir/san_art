import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/respond/sms_page_entities.dart';

part 'sms_respond.freezed.dart';
part 'sms_respond.g.dart';

@freezed
abstract class SmsRespondModel with _$SmsRespondModel {
  factory SmsRespondModel({
    required dynamic token,
    required dynamic deviceId,
    required dynamic username})=_SmsRespondModel;

  factory SmsRespondModel.fromJson(Map<String, dynamic> json) => _$SmsRespondModelFromJson(json);

  SmsRespondModel._();

  SmsPageEntities toEntities() => SmsPageEntities(
    username:username,
    deviceId:deviceId,
    token: token,
  );
}