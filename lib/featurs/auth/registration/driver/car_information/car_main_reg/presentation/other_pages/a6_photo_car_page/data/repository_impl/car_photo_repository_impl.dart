import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/data/datasources/upload_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/entities/respond/car_photo_upload_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/domain/repository/car_photo_repository.dart';

import '../../domain/entities/car_photo_entity.dart';

@Injectable(as: CarPhotoRepository)
class CarPhotoRepositoryImpl implements CarPhotoRepository {
  UploadDataSource uploadDataSource;

  CarPhotoRepositoryImpl({required this.uploadDataSource});

  @override
  Future<Result<CarPhotoUploadEntities, Failure>> uploadSingleImage(
      {required CarPhotoEntity carPhoto}) async {
    var data = await uploadDataSource.uploadFile(
        fileName: carPhoto.fileName, filePath: carPhoto.filePath);

    return data.when(
        (success) => Success(
              success.toEntity(),
            ),
        (error) => Error(
              Failure.serverError(error.message),
            ));
  }
}
