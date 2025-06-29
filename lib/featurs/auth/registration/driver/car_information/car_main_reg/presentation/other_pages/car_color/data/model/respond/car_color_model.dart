import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/domain/entities/respond/car_color_entities.dart';

part 'car_color_model.freezed.dart';
part 'car_color_model.g.dart';

// {"id": 1,
// "name": "Чёрный",
// "name_uz": "Қора",
// "name_ru": "Чёрный",
// "name_en": "Black",
// "rgb": "#000000"}
@freezed
abstract class CarColorModel with _$CarColorModel {
  factory CarColorModel({
    required int id,
    required String name,
    required String name_uz,
    required String name_en,
    required String rgb,
  }) = _CarColorModel;

  CarColorModel._();

  factory CarColorModel.fromJson(Map<String, dynamic> json) =>
      _$CarColorModelFromJson(json);

  CarColorEntities toEntity() => CarColorEntities(
        id: id,
        name: name,
        nameUz: name_uz,
        nameRu: name_en,
        nameEn: rgb,
        rgm: rgb,
      );
}
