
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/stories/stories_entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'stories_model.freezed.dart';
part 'stories_model.g.dart';

@freezed
abstract class StoriesModels with _$StoriesModels {
  const factory StoriesModels({
    required int id,
    required String name,
    required String username,
    required String email,
    required AddressModel address,
  }) = _StoriesModels;

  factory StoriesModels.fromJson(Map<String, dynamic> json) => _$StoriesModelsFromJson(json);

  const StoriesModels._();

  StoriesEntities toEntity() => StoriesEntities(
    id: id,
    name: name,
    username: username,
    email: email,
    address: address.toEntity(),
  );
}

@freezed
abstract class AddressModel with _$AddressModel {
  const factory AddressModel({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required GeoModel geo,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);

  const AddressModel._();

  Address toEntity() => Address(
    street: street,
    suite: suite,
    city: city,
    zipcode: zipcode,
    geo: geo.toEntity(),
  );
}

@freezed
abstract class GeoModel with _$GeoModel {
  const factory GeoModel({
    required String lat,
    required String lng,
  }) = _GeoModel;

  factory GeoModel.fromJson(Map<String, dynamic> json) => _$GeoModelFromJson(json);

  const GeoModel._();

  Geo toEntity() => Geo(
    lat: lat,
    lng: lng,
  );
}