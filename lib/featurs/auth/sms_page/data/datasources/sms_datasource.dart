import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/sms_page/data/model/respond/sms_respond.dart';

abstract class SmsRemoteDataSource {
  Future<Result<SmsRespondModel, Failure>> login(
      {required String userName,
      required String deviceName,
      required String code});
}

@Injectable(as: SmsRemoteDataSource)
class SmsRemoteDataSourceImpl implements SmsRemoteDataSource {
  Dio dio;

  SmsRemoteDataSourceImpl({required this.dio});

  @override
  Future<Result<SmsRespondModel, Failure>> login(
      {required String userName,
      required String deviceName,
      required String code}) async {
    try {
      log(AllUrl.urlLogin());
      log(userName);
      log(code);
      final response = await dio.post(AllUrl.urlLogin(),
          data: {"username": userName, "device_name": "string", "code": code});

      SmsRespondModel loginRequestModel =
      SmsRespondModel.fromJson(response.data);

      return Success(loginRequestModel);
    } on DioException catch(ee){
      // Improved error handling to extract more meaningful error messages
      if(ee.response != null) {
        // Try to extract error message from response data if available
        if(ee.response!.data != null && ee.response!.data is Map && ee.response!.data['message'] != null) {
          return Error(Failure.serverError(ee.response!.data['message'].toString()));
        }
        // If no message in data, use status message if available
        else if(ee.response!.statusMessage != null) {
          return Error(Failure.serverError(ee.response!.statusMessage));
        }
        // Fall back to status code if no message available
        else {
          return Error(Failure.serverError("Error ${ee.response!.statusCode}"));
        }
      }
      // Handle case where response is null (connection issues, etc.)
      else {
        return Error(Failure.serverError(ee.message ?? "Unknown network error"));
      }
    }
    catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
