// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegionModel _$RegionModelFromJson(Map<String, dynamic> json) => _RegionModel(
      id: json['id'],
      name: json['name'] as String,
      code: json['code'] as String,
      mask: json['mask'] as String,
    );

Map<String, dynamic> _$RegionModelToJson(_RegionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'mask': instance.mask,
    };
