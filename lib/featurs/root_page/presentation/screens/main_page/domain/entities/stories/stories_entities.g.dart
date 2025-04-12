// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoriesEntities _$StoriesEntitiesFromJson(Map<String, dynamic> json) =>
    _StoriesEntities(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoriesEntitiesToJson(_StoriesEntities instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
    };

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: Geo.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };

_Geo _$GeoFromJson(Map<String, dynamic> json) => _Geo(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$GeoToJson(_Geo instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
