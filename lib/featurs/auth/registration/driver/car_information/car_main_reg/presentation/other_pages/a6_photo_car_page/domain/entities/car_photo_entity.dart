import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_photo_entity.freezed.dart';

@freezed
abstract class CarPhotoEntity with _$CarPhotoEntity {
  factory CarPhotoEntity({
    required String filePath,
    required String fileName,
  }) = _CarPhotoEntity;
}
