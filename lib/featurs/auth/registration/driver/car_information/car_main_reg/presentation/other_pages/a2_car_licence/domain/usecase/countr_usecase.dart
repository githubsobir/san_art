import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/domain/entities/respond/country/countr_entity.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/domain/repository/country_repository.dart';

@injectable
class CountryUsecase {
  CountryRepository countryRepository;

  CountryUsecase(this.countryRepository);

  Future<Result<List<CountryEntity>, Failure>> getCountry() async {
    return await countryRepository.getCountry();
  }
}
