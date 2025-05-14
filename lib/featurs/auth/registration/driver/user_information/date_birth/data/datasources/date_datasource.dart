import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/network/url_all.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/date_birth/data/model/response/date_response_model.dart';

abstract class DateDataSource {
  Future<Result<DateResponseModel, Failure>> getData(String date);
}

@Injectable(as: DateDataSource)
class DateDataSourceImpl implements DateDataSource {
  Dio dio;

  DateDataSourceImpl(this.dio);

  @override
  Future<Result<DateResponseModel, Failure>> getData(String date) async {
    try {
      /// url o'zgartirish qo'shish kerak
      var response = await dio.post(AllUrl.urlSetDateBirth());
      DateResponseModel date12 = DateResponseModel.fromJson(response.data);
      return Success(date12);
    } on DioException catch (ee) {
      return Error(Failure.invalidData(ee.message.toString()));
    } catch (e) {
      return Error(Failure.invalidData(e.toString()));
    }
  }
}
