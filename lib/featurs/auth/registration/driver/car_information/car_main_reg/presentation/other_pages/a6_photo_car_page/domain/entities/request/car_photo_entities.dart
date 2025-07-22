import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_photo_entities.freezed.dart';

@freezed
abstract class CarPhotoEntities with _$CarPhotoEntities {
  const factory CarPhotoEntities({
    required int car,
    required String type,
    required List<String> images,
  }) = _CarPhotoEntities;
}