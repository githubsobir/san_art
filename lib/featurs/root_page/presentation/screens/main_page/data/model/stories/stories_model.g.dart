// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoriesModels _$StoriesModelsFromJson(Map<String, dynamic> json) =>
    _StoriesModels(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoriesModelsToJson(_StoriesModels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
    };

_AddressModel _$AddressModelFromJson(Map<String, dynamic> json) =>
    _AddressModel(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: GeoModel.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressModelToJson(_AddressModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };

_GeoModel _$GeoModelFromJson(Map<String, dynamic> json) => _GeoModel(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$GeoModelToJson(_GeoModel instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
