import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/data/datasources/car_type_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/entities/respond/car_type_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/repository/car_type_repository.dart';

@Injectable(as: CarTypeRepository)
class CarTypeRepositoryImpl implements CarTypeRepository {
  CarTypeDataSource carTypeDataSource;

  CarTypeRepositoryImpl(this.carTypeDataSource);

  @override
  Future<Result<List<CarTypeEntities>, Failure>> getData() async {
    try {
      var value = await carTypeDataSource.getCarType();
      return value.when(
          (success) => Success(success.map((e) => e.toEntity()).toList()),
          (error) => Error(Failure.unexpected(error.toString())));
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
