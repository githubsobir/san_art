import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/domain/entities/respond/car_brand_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/domain/repository/car_brand_repository.dart';

@injectable
class CarBrandUsecase {
  CarBrandRepository carBrandRepository;

  CarBrandUsecase(this.carBrandRepository);

  Future<Result<List<CarBrandEntities>, Failure>> getCarBrand() async {
    return await carBrandRepository.getData();
  }
}
