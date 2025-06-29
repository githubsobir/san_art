import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/entities/respond/car_type_entities.dart';

abstract class CarTypeRepository {
  Future<Result<List<CarTypeEntities>, Failure>> getData();
}
