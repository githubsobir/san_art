import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_brand_entities.freezed.dart';

@freezed
abstract class CarBrandEntities with _$CarBrandEntities {
  const factory CarBrandEntities({required int id, required String name}) =
      _CarBrandEntities;
}
