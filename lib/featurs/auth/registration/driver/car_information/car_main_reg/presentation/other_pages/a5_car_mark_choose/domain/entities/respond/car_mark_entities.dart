import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_mark_entities.freezed.dart';

@freezed
abstract class CarMarkEntities with _$CarMarkEntities {
  factory CarMarkEntities({
    required dynamic id,
    required dynamic name,
    required dynamic brand,
    required dynamic type,
  }) = _CarMarkEntities;
}
