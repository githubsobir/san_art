import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/domain/entities/respond/car_color_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/domain/repository/car_repository.dart';

@Injectable()
class CarColorUsecase {
  CarColorRepository carColorRepository;

  CarColorUsecase(this.carColorRepository);

  Future<Result<List<CarColorEntities>, Failure>> getData() async {
    return await carColorRepository.getData();
  }
}
