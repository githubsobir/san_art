import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/domain/entities/respond/car_mark_entities.dart';

abstract class CarMarkRepository {
  Future<Result<List<CarMarkEntities>, Failure>> data();
}
