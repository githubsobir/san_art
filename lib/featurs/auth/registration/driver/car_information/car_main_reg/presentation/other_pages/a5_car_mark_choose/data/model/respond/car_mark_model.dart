import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/domain/entities/respond/car_mark_entities.dart';

part 'car_mark_model.freezed.dart';
part 'car_mark_model.g.dart';

@freezed
abstract class CarMarkModel with _$CarMarkModel {
  factory CarMarkModel(
      {required dynamic id,
      required dynamic name,
      required dynamic brand,
      required dynamic type}) = _CarMarkModel;

  factory CarMarkModel.fromJson(Map<String, dynamic> json) =>
      _$CarMarkModelFromJson(json);

  CarMarkModel._();

  CarMarkEntities toEntity() => CarMarkEntities(
        id: id,
        name: name,
        brand: brand,
        type: type,

      );
}
