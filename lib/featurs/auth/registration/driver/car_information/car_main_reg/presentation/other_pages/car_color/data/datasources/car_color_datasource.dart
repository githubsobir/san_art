import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/data/model/respond/car_color_model.dart';

abstract class CarColorDatasource {
  Future<Result<List<CarColorModel>, Failure>> getDataSource();
}

@Injectable(as: CarColorDatasource)
class CarColorDatasourceImpl implements CarColorDatasource {
  Dio dio;

  CarColorDatasourceImpl(this.dio);

  @override
  Future<Result<List<CarColorModel>, Failure>> getDataSource() async {
    try {
      var value = await dio.get(AllUrl.urlColor());

      List<CarColorModel> list =
          (value.data as List).map((e) => CarColorModel.fromJson(e)).toList();

      return Result.success(list);
    } catch (e) {
      return Result.error(Failure.unexpected(e.toString()));
    }
  }
}
