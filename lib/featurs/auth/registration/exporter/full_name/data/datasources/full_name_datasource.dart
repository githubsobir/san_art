import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/data/model/full_name_model.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/data/model/result/full_name_result_model.dart';

abstract class FullNameDataSource {
  Future<Result<FullNameResultModel, Failure>> getData(FullNameModel fullName);
}

@Injectable(as: FullNameDataSource)
class FullNameDataSourceImpl implements FullNameDataSource {
  @override
  Future<Result<FullNameResultModel, Failure>> getData(
      FullNameModel fullName) async {
    try {
      return Success(FullNameResultModel(id: "1", message: "message"));
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
