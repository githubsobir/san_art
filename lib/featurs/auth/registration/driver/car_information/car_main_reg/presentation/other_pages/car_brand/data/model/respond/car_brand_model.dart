import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/domain/entities/respond/car_brand_entities.dart';

part 'car_brand_model.freezed.dart';
part 'car_brand_model.g.dart';

@freezed
abstract class CarBrandModel with _$CarBrandModel {
   factory CarBrandModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _CarBrandModel;

  CarBrandModel._();

  factory CarBrandModel.fromJson(Map<String, dynamic> json) =>
      _$CarBrandModelFromJson(json);


  CarBrandEntities toEntities() => CarBrandEntities(
    id: id,
    name: name,
  );
}