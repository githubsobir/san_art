import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/entities/car_photo_entity.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/entities/respond/car_photo_upload_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/repository/car_photo_repository.dart';

@injectable
class UploadImagesUseCase {
  final CarPhotoRepository repository;

  UploadImagesUseCase(this.repository);

  Future<Result<CarPhotoUploadEntities, Failure>> getData(
      {required CarPhotoEntity carPhotos}) async {
    return await repository.uploadSingleImage(carPhoto: carPhotos);
  }
}
