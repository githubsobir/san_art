import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/data/datasources/full_name_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/data/model/request/full_name_model.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/request/full_name_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/response/full_name_result.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/repository/full_name_repository.dart';

@Injectable(as: FullNameDriverRepository)
class FullNameRepositoryImpl implements FullNameDriverRepository {
  FullNameDriverDataSource fullNameDataSource;

  FullNameRepositoryImpl(this.fullNameDataSource);

  late FullNameDriverResult fullNameResult;

  @override
  Future<Result<FullNameDriverResult, Failure>> getFullName(
      FullNameDriverEntities fullNameEntities) async {
    FullNameDriverModel fullNameModel = FullNameDriverModel(
        lName: fullNameEntities.lName,
        name: fullNameEntities.name,
        sName: fullNameEntities.sName);

    try {
      var data = await fullNameDataSource.getData(fullNameModel);

      data.when((success) {
        fullNameResult =
            FullNameDriverResult(id: success.id, message: success.message);
      }, (error) => Error(error));
      return Success(fullNameResult);
    } catch (ee) {
      return Error(Failure.unexpected(ee.toString()));
    }
  }
}
