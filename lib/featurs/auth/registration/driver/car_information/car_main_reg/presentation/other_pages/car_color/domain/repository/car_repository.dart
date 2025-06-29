import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/domain/entities/respond/car_color_entities.dart';

abstract class CarColorRepository {
  Future<Result<List<CarColorEntities>, Failure>> getData();
}
