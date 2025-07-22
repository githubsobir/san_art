import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/entities/respond/car_photo_upload_entities.dart';

import '../entities/car_photo_entity.dart';

abstract class CarPhotoRepository {
  Future<Result<CarPhotoUploadEntities, Failure>> uploadSingleImage(
      {required CarPhotoEntity carPhoto});
}
