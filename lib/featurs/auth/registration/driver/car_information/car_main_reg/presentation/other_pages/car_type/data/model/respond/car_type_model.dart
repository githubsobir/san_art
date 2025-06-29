import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/entities/respond/car_type_entities.dart';

part 'car_type_model.freezed.dart';
part 'car_type_model.g.dart';

@freezed
abstract class CarTypeModel with _$CarTypeModel {

  factory CarTypeModel({
    required int id,
    required dynamic name,
    required dynamic description,
    @JsonKey(name: 'weight_type') required dynamic weightType,
    required dynamic image,
    required bool status,
  }) = _CarTypeModel;

  factory CarTypeModel.fromJson(Map<String, dynamic> json) =>
      _$CarTypeModelFromJson(json);

  CarTypeModel._();
  CarTypeEntities toEntity()=>CarTypeEntities(
    id: id,
    name: name,
    description: description,
    weightType: weightType,
    image: image,
    status: status,
  );
}
