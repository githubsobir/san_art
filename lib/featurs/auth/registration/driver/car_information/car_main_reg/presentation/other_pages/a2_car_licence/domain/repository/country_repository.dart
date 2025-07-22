import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/domain/entities/respond/country/countr_entity.dart';

abstract class CountryRepository {
  Future<Result<List<CountryEntity>, Failure>> getCountry();
}
