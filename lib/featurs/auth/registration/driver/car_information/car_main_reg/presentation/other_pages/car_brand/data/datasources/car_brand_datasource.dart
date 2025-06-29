import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/data/model/respond/car_brand_model.dart';

abstract class CarBrandDataSource {
  Future<Result<List<CarBrandModel>, Failure>> getData();
}

@Injectable()
class CarBrandDataSourceImpl implements CarBrandDataSource {
  Dio dio;

  CarBrandDataSourceImpl(this.dio);

  @override
  Future<Result<List<CarBrandModel>, Failure>> getData() async {
    try {
      var val = await dio.get(AllUrl.urlCarBrand());

      List<CarBrandModel> list =
          (val.data as List).map((e) => CarBrandModel.fromJson(e)).toList();
      return Success(list);
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
