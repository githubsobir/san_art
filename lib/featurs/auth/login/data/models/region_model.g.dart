// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegionModel _$RegionModelFromJson(Map<String, dynamic> json) => _RegionModel(
      id: json['id'],
      name: json['name'] as String,
      parent: json['parent'],
      status: json['status'] as bool,
    );

Map<String, dynamic> _$RegionModelToJson(_RegionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parent': instance.parent,
      'status': instance.status,
    };
