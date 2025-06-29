import 'package:injectable/injectable.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/entities/respond/car_type_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/repository/car_type_repository.dart';
import 'package:multiple_result/multiple_result.dart';

@injectable
class CarTypeUsecase{
  CarTypeRepository carTypeRepository;
  CarTypeUsecase(this.carTypeRepository);

  Future<Result<List<CarTypeEntities>, Failure>> getCarType()async {
    return await carTypeRepository.getData();

  }
}