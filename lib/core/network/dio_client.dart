import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class NetworkSanArt {

  final Dio dio;

  NetworkSanArt()
      : dio = Dio(BaseOptions(
    baseUrl: "http://46.101.142.154:8222/",
    connectTimeout: Duration(seconds: 8),
    receiveTimeout: Duration(seconds: 5),
  )) {
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }
}