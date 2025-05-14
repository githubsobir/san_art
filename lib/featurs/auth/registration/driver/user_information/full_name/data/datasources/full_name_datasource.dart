import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/data/model/request/full_name_model.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/data/model/response/full_name_result_model.dart';

abstract class FullNameDriverDataSource {
  Future<Result<FullNameDriverResultModel, Failure>> getData(FullNameDriverModel fullName);
}

@Injectable(as: FullNameDriverDataSource)
class FullNameDataSourceImpl implements FullNameDriverDataSource {
  @override
  Future<Result<FullNameDriverResultModel, Failure>> getData(
      FullNameDriverModel fullName) async {
    try {
      return Success(FullNameDriverResultModel(id: "1", message: "message"));
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
