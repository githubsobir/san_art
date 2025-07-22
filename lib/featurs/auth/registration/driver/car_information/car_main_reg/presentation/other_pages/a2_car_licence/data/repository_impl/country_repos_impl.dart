import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/data/datasources/country_datasource/country_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/domain/entities/respond/country/countr_entity.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/domain/repository/country_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CountryRepository)
class CountryRepositoryImpl implements CountryRepository {
  CountryDatasource countryDatasource;

  CountryRepositoryImpl(this.countryDatasource);

  @override
  Future<Result<List<CountryEntity>, Failure>> getCountry() async {
    var data = await countryDatasource.getCountry();

    return data.when(
        (success) => Success(success.map((e) => e.toEntity()).toList()),
        (error) => Error(Failure.unexpected(error.toString())));
  }
}
