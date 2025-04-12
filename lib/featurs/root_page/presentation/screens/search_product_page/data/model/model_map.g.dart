// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModelMap _$ModelMapFromJson(Map<String, dynamic> json) => _ModelMap(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      langLat: (json['langLat'] as List<dynamic>)
          .map((e) => LangLatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImagesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ModelMapToJson(_ModelMap instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'langLat': instance.langLat,
      'images': instance.images,
    };

_LangLatModel _$LangLatModelFromJson(Map<String, dynamic> json) =>
    _LangLatModel(
      lat: json['lat'] as String,
      lang: json['lang'] as String,
    );

Map<String, dynamic> _$LangLatModelToJson(_LangLatModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lang': instance.lang,
    };

_ImagesModel _$ImagesModelFromJson(Map<String, dynamic> json) => _ImagesModel(
      id: json['id'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$ImagesModelToJson(_ImagesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
