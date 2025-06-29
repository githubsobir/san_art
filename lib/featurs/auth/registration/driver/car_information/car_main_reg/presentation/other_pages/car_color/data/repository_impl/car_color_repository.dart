import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/data/datasources/car_color_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/domain/entities/respond/car_color_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/domain/repository/car_repository.dart';

@Injectable(as: CarColorRepository)
class CarColorRepositoryImpl implements CarColorRepository {
  CarColorDatasource carColorDatasource;

  CarColorRepositoryImpl(this.carColorDatasource);

  @override
  Future<Result<List<CarColorEntities>, Failure>> getData() async {
    var val = await carColorDatasource.getDataSource();
    return val.when(
      (success) =>  Success(success.map((e) => e.toEntity()).toList()),
      (error) => Error(Failure.unexpected(error.toString())),
    );
  }
}
