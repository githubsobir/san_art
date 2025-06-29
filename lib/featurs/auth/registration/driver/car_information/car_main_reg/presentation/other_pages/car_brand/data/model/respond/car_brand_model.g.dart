// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarBrandModel _$CarBrandModelFromJson(Map<String, dynamic> json) =>
    _CarBrandModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CarBrandModelToJson(_CarBrandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
