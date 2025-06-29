import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/data/model/respond/car_mark_model.dart';

abstract class CarMarkDataSource {
  Future<Result<List<CarMarkModel>, Failure>> getData();
}

@Injectable(as: CarMarkDataSource)
class CarMarkDataSourceImpl implements CarMarkDataSource {
  Dio dio;

  CarMarkDataSourceImpl(this.dio);

  @override
  Future<Result<List<CarMarkModel>, Failure>> getData() async {
    try {
      var data = await dio.get(AllUrl.urlCarMark());
      List<CarMarkModel> carMarkModel =
          (data.data as List).map((e) => CarMarkModel.fromJson(e)).toList();
      return Success(carMarkModel);
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
