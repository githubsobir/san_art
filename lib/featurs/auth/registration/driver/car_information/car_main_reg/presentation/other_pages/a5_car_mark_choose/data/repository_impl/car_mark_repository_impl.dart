import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/data/datasources/car_mark_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/domain/entities/respond/car_mark_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/domain/repository/car_mark_repository.dart';

@Injectable(as: CarMarkRepository)
class CarMarkRepositoryImpl implements CarMarkRepository {
  CarMarkDataSource carMarkDataSource;

  CarMarkRepositoryImpl(this.carMarkDataSource);

  @override
  Future<Result<List<CarMarkEntities>, Failure>> data() async {
    try {
      var vale = await carMarkDataSource.getData();

      return vale.when(
        (success) => Success(success.map((e) => e.toEntity()).toList()),
        (error) {
          return Error(Failure.unexpected(error.toString()));
        },
      );
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
