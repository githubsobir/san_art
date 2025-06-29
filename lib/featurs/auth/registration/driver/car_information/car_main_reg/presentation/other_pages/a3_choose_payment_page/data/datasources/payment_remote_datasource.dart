import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/data/model/request/payment_method_model.dart';


abstract class PaymentRemoteDataSource {
  Future<Result<List<PaymentMethodModel>, String>> getPaymentMethods();
}

@Injectable(as: PaymentRemoteDataSource)
class PaymentRemoteDataSourceImpl implements PaymentRemoteDataSource {
  final Dio _dio;

  PaymentRemoteDataSourceImpl(this._dio);

  @override
  Future<Result<List<PaymentMethodModel>, String>> getPaymentMethods() async {
    try {

      final response = await _dio.get(AllUrl.urlGetPaymentType());
      log(response.toString());
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data;
        final List<PaymentMethodModel> paymentMethods = jsonList
            .map((json) => PaymentMethodModel.fromJson(json))
            .toList();

        return Success(paymentMethods);
      } else {
        return Error('Server error: ${response.statusCode}');
      }
    } on DioException catch (e) {
      return Error(_handleDioError(e));
    } catch (e) {
      return Error('Unknown error: $e');
    }
  }

  String _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout';
      case DioExceptionType.sendTimeout:
        return 'Send timeout';
      case DioExceptionType.receiveTimeout:
        return 'Receive timeout';
      case DioExceptionType.badResponse:
        return 'Bad response: ${e.response?.statusCode}';
      case DioExceptionType.cancel:
        return 'Request cancelled';
      case DioExceptionType.connectionError:
        return 'Connection error';
      default:
        return 'Network error';
    }
  }
}