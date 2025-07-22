// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_photo_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarPhotoResponseModel _$CarPhotoResponseModelFromJson(
        Map<String, dynamic> json) =>
    _CarPhotoResponseModel(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      errorCode: json['errorCode'] as String,
    );

Map<String, dynamic> _$CarPhotoResponseModelToJson(
        _CarPhotoResponseModel instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
