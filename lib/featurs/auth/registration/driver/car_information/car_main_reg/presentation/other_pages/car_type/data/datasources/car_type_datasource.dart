import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/data/model/respond/car_type_model.dart';

abstract class CarTypeDataSource {
  Future<Result<List<CarTypeModel>, Failure>> getCarType();
}

@Injectable(as: CarTypeDataSource)
class CarTypeDataSourceImpl implements CarTypeDataSource {
  Dio _dio;

  CarTypeDataSourceImpl(this._dio);

  @override
  Future<Result<List<CarTypeModel>, Failure>> getCarType() async {
    try {
      var result = await _dio.get(AllUrl.urlCarType());

      List<CarTypeModel> list =
          (result.data as List).map((e) => CarTypeModel.fromJson(e)).toList();

      return Success(list);
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
