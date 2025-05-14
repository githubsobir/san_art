import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_main_driver_entities.freezed.dart';

@freezed
abstract class CarMainDriverEntity with _$CarMainDriverEntity {
  factory CarMainDriverEntity({
    required String name,
    required String action,
    required String note,
  }) = _CarMainDriverEntity;
}
