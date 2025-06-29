// {"id": 1,
// "name": "Чёрный",
// "name_uz": "Қора",
// "name_ru": "Чёрный",
// "name_en": "Black",
// "rgb": "#000000"}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_color_entities.freezed.dart';

@freezed
abstract class CarColorEntities with _$CarColorEntities {
  factory CarColorEntities({
    required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'name_uz') required String nameUz,
    @JsonKey(name: 'name_ru') required String nameRu,
    @JsonKey(name: 'name_en') required String nameEn,
    @JsonKey(name: 'rgb') required dynamic rgm,
  }) = _CarColorEntities;
}
