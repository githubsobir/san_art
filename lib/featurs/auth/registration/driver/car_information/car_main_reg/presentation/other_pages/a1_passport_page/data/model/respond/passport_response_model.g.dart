// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PassportResponseModel _$PassportResponseModelFromJson(
        Map<String, dynamic> json) =>
    _PassportResponseModel(
      success: json['success'] as String,
      message: json['message'] as String,
      errorCode: json['errorCode'] as String,
    );

Map<String, dynamic> _$PassportResponseModelToJson(
        _PassportResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
