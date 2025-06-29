import 'package:injectable/injectable.dart';
import 'package:multiple_result/src/result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/data/datasources/weigth_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/domain/entities/respond/car_weigth.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/domain/repository/car_weigth_repository.dart';

@Injectable(as: CarWeightRepository)
class CarWeightRepositoryImpl implements CarWeightRepository {
  WeightDatasource weightDatasource;

  CarWeightRepositoryImpl(this.weightDatasource);

  @override
  Future<Result<List<CarWeightEntity>, Failure>> getData() async {
    try {
      var data = await weightDatasource.getData();

      return data.when(
          (success) {
            print("success");
            print(success.last.toString());
            return Success(success.map((e) => e.toEntity()).toList());
          },
          (error) => Error(Failure.unexpected(error.message.toString())));
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
