// "id": 1,
// "name": "Автовозы",
// "description": null,
// "weight_type": 4,
// "image": "http://46.101.142.154:8222/media/images/1.png",
// "status": true
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_type_entities.freezed.dart';

@freezed
abstract class CarTypeEntities with _$CarTypeEntities{
  factory CarTypeEntities({
    required int id,
    required dynamic name,
    required dynamic description,
    required dynamic weightType,
    required dynamic image,
    required bool status,
})=_CartTypeEntities;
}