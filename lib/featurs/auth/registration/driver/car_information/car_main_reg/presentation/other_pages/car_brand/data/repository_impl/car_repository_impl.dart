import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/data/datasources/car_brand_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/domain/entities/respond/car_brand_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/domain/repository/car_brand_repository.dart';

@Injectable(as: CarBrandRepository)
class CarBrandRepositoryImpl implements CarBrandRepository {
  CarBrandDataSourceImpl carBrandDataSourceImpl;

  CarBrandRepositoryImpl(this.carBrandDataSourceImpl);

  @override
  Future<Result<List<CarBrandEntities>, Failure>> getData() async {
    var data = await carBrandDataSourceImpl.getData();
    return data.when(
        (success) => Success(success.map((e) => e.toEntities()).toList()),
        (error) => Error(Failure.unexpected(error.toString())));
  }
}
