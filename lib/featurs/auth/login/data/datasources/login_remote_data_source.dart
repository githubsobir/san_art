import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/login/data/models/login/login_response_model/login_response_model.dart';

abstract class LoginRemoteDataSource {
  Future<Result<LoginResponseModel, Failure>> getData(
      {required String userName, required String deviceName});
}

@Injectable(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final Dio dio;

  LoginRemoteDataSourceImpl({required this.dio});

  @override
  Future<Result<LoginResponseModel, Failure>> getData(
      {required String userName, required String deviceName}) async {
    try {
      log("###");
      log(AllUrl.urlLogin());
      log(userName);
      log(deviceName);
      var response = await dio.post(AllUrl.urlLogin(),
          data: {"username": userName, "device_name": "deviceName"});
      log(jsonEncode(response.data).toString());
      LoginResponseModel loginResponseModel =
          LoginResponseModel.fromJson(response.data);
      return Success(loginResponseModel);
    } catch (e) {
      log(e.toString());
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
