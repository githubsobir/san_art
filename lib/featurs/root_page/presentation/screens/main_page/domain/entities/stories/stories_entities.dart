import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories_entities.freezed.dart';
part 'stories_entities.g.dart';

@freezed
abstract class StoriesEntities with _$StoriesEntities{
  const factory StoriesEntities({
    required int id,
    required String name,
    required String username,
    required String email,
    required Address address,
  }) = _StoriesEntities;

  factory StoriesEntities.fromJson(Map<String, dynamic> json) => _$StoriesEntitiesFromJson(json);
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required Geo geo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
abstract class Geo with _$Geo {
  const factory Geo({
    required String lat,
    required String lng,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}
