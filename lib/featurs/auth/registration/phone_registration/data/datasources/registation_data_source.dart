import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/data/models/registration/request/registration.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/data/models/registration/response/registration_response.dart';

abstract class RegistrationDataSource {
  Future<Result<RegistrationResponseModel, Failure>> getData(
      RegistrationModel r);
}

@Injectable(as: RegistrationDataSource)
class RegistrationDataSourceImpl implements RegistrationDataSource {
  Dio dio;

  RegistrationDataSourceImpl(this.dio);

  @override
  Future<Result<RegistrationResponseModel, Failure>> getData(
      RegistrationModel r) async {
    try {
      var resutl = await dio.post(AllUrl.urlLogin(), data: {
        "username": r.username,
        "device_name": r.device_name,
      });

      log(jsonEncode(resutl.data.toString()));
      return Success(RegistrationResponseModel.fromJson(resutl.data));
    } on DioException catch (ee) {
      return Error(Failure.serverError(ee.response!.data.toString()));
    } catch (e) {
      return Error(Failure.serverError(e.toString()));
    }
  }
}
