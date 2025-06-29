// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_color_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarColorModel _$CarColorModelFromJson(Map<String, dynamic> json) =>
    _CarColorModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      name_uz: json['name_uz'] as String,
      name_en: json['name_en'] as String,
      rgb: json['rgb'] as String,
    );

Map<String, dynamic> _$CarColorModelToJson(_CarColorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_uz': instance.name_uz,
      'name_en': instance.name_en,
      'rgb': instance.rgb,
    };
