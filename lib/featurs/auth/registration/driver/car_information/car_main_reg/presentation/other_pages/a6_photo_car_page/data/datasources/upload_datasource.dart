import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a6_photo_car_page/data/model/respond/car_photo_response_model.dart';

abstract class UploadDataSource {
  Future<Result<CarPhotoResponseModel, Failure>> uploadFile({
    required String filePath,
    required String fileName,
  });
}

@Injectable(as: UploadDataSource)
class UploadDataSourceImpl implements UploadDataSource {
  final Dio dio;

  UploadDataSourceImpl({required this.dio});

  var box = HiveBoxes();

  @override
  Future<Result<CarPhotoResponseModel, Failure>> uploadFile(
      {required String filePath, required String fileName}) async {
    try {
      FormData formData = FormData.fromMap({
        'car': 1,
        'type': "1",
        'file': await MultipartFile.fromFile(
          filePath,
          filename: fileName,
        ),
      });

      log("Token ${box.userToken}");

      var request = await dio.post(AllUrl.urlPhoto(),
          data: formData,
          options:
              Options(headers: {"Authorization": "Token ${box.userToken}"}));
      log(jsonEncode(request.data));
      return Success(CarPhotoResponseModel.fromJson(request.data));
    } catch (e) {
      log(e.toString());
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
