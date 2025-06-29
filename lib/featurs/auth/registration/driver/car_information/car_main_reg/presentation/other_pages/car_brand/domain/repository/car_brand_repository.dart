import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/domain/entities/respond/car_brand_entities.dart';

abstract class CarBrandRepository{
  Future<Result<List<CarBrandEntities>, Failure>> getData();
}