import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/data/model/respond/car_weigth_model.dart';

abstract class WeightDatasource {
  Future<Result<List<CarWeightModel>, Failure>> getData();
}

@Injectable(as: WeightDatasource)
class WeightDatasourceImpl implements WeightDatasource {
  Dio dio;

  WeightDatasourceImpl(this.dio);

  @override
  Future<Result<List<CarWeightModel>, Failure>> getData() async {
    var response = await dio.get(AllUrl.urlCarWeightType());
    log(response.data.toString());

    try {
      List<CarWeightModel> carWeightList = List<CarWeightModel>.from(
          response.data.map((e) => CarWeightModel.fromJson(e))
      );


      return Success(carWeightList);
    } catch (e) {
      log('CarWeightModel parse qilishda xatolik: $e');
      return Error(Failure.unexpected("Ma'lumotni parse qilishda xatolik"));
    }
  }
}
