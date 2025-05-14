// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) =>
    _LoginRequestModel(
      username: json['username'] as String,
      deviceName: json['deviceName'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$LoginRequestModelToJson(_LoginRequestModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'deviceName': instance.deviceName,
      'code': instance.code,
    };
