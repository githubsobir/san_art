// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MapEntities _$MapEntitiesFromJson(Map<String, dynamic> json) => _MapEntities(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      langLat: LangLat1.fromJson(json['langLat'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MapEntitiesToJson(_MapEntities instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'langLat': instance.langLat,
      'images': instance.images,
    };
