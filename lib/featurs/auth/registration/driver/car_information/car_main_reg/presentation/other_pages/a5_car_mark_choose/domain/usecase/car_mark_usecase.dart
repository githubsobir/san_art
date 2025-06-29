import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/domain/entities/respond/car_mark_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/domain/repository/car_mark_repository.dart';

@injectable
class CarMarkUsecase {
  CarMarkRepository carMarkRepository;

  CarMarkUsecase(this.carMarkRepository);

  Future<Result<List<CarMarkEntities>, Failure>> data() {
    return carMarkRepository.data();
  }
}
