import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/data/model/respond/passport_response_model.dart';

abstract class PassportUploadDataSource {
  Future<Result<PassportResponseModel, Failure>> getData();
}

@Injectable(as: PassportUploadDataSource)
class PassportUploadDataSourceImpl implements PassportUploadDataSource {
  Dio dio;

  PassportUploadDataSourceImpl({required this.dio});

  @override
  Future<Result<PassportResponseModel, Failure>> getData() async {
    try {
      return Success(
          PassportResponseModel(errorCode: "", message: "", success: ""));
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  } 
}
