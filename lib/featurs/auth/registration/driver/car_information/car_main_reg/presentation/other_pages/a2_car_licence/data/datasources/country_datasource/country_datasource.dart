import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a2_car_licence/data/model/respond/country_model.dart';

abstract class CountryDatasource {
  Future<Result<List<CountryModel>, Failure>> getCountry();
}

@Injectable(as: CountryDatasource)
class CountryDatasourceImpl implements CountryDatasource {
  Dio dio;

  CountryDatasourceImpl(this.dio);

  @override
  Future<Result<List<CountryModel>, Failure>> getCountry() async {
    try {
      var result = await dio.get(AllUrl.urlGetCountry());
      List<CountryModel> list =
          (result.data as List).map((e) => CountryModel.fromJson(e)).toList();
      log(jsonEncode(list).toString());
      return Success(list);
    } catch (e) {
      log("SOBIRn");
      log(e.toString());
      return Error(Failure.unexpected(e.toString()));

    }
  }
}
