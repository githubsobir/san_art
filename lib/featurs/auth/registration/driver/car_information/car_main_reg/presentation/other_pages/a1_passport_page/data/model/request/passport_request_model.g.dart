// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PassportRequestModel _$PassportRequestModelFromJson(
        Map<String, dynamic> json) =>
    _PassportRequestModel(
      serNum: json['serNum'] as String,
      datePassport: json['datePassport'] as String,
      fileName: json['fileName'] as String,
      filePath: json['filePath'] as String,
    );

Map<String, dynamic> _$PassportRequestModelToJson(
        _PassportRequestModel instance) =>
    <String, dynamic>{
      'serNum': instance.serNum,
      'datePassport': instance.datePassport,
      'fileName': instance.fileName,
      'filePath': instance.filePath,
    };
