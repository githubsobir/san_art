// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_page_req_entites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginSmsRequestEntities _$LoginSmsRequestEntitiesFromJson(
        Map<String, dynamic> json) =>
    _LoginSmsRequestEntities(
      username: json['username'] as String,
      deviceName: json['deviceName'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$LoginSmsRequestEntitiesToJson(
        _LoginSmsRequestEntities instance) =>
    <String, dynamic>{
      'username': instance.username,
      'deviceName': instance.deviceName,
      'code': instance.code,
    };
