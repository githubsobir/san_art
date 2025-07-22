
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/entities/car_photo_entity.dart';

part 'car_photo_model.freezed.dart';
part 'car_photo_model.g.dart';

@freezed
abstract class CarPhotoModel with _$CarPhotoModel {
  factory CarPhotoModel({
    required String filePath,
    required String fileName,
  }) = _CarPhotoModel;



  factory CarPhotoModel.fromJson(Map<String, dynamic> json) =>
      _$CarPhotoModelFromJson(json);


  CarPhotoModel._();

  CarPhotoEntity toEntity() => CarPhotoEntity(filePath: filePath, fileName: fileName);
}
