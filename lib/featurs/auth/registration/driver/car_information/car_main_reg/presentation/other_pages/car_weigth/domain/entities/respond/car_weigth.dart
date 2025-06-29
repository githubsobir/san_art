import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_weigth.freezed.dart';

@freezed
abstract class CarWeightEntity with _$CarWeightEntity {


  factory CarWeightEntity({
    required dynamic id,
    required dynamic name,
    required dynamic  description,
    required dynamic  weightMax,
    required dynamic  weightMin,
    required dynamic  status,

})= _CarWeightEntity;

}