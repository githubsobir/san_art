import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/domain/entities/respond/car_weigth.dart';

part 'car_weigth_model.freezed.dart';
part 'car_weigth_model.g.dart';
@freezed
abstract class CarWeightModel with _$CarWeightModel {
  factory CarWeightModel({
    required dynamic id,
    required dynamic name,
    dynamic description,  // null bo'lishi mumkin
    @JsonKey(name: 'weight_max') required dynamic weightMax,
    @JsonKey(name: 'weight_min') required dynamic weightMin,
    required dynamic status,
  }) = _CarWeightModel;

  CarWeightModel._();

  factory CarWeightModel.fromJson(Map<String, dynamic> json) =>
      _$CarWeightModelFromJson(json);

  CarWeightEntity toEntity() =>
      CarWeightEntity(
          id: id,
          name: name,
          description: description,
          weightMax: weightMax,
          weightMin: weightMin,
          status: status);
}