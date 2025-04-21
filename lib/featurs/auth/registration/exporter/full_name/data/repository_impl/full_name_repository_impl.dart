import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/data/datasources/full_name_datasource.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/data/model/full_name_model.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/full_name_entities.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/result/full_name_result.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/repository/full_name_repository.dart';

@Injectable(as: FullNameRepository)
class FullNameRepositoryImpl implements FullNameRepository {
  FullNameDataSource fullNameDataSource;

  FullNameRepositoryImpl(this.fullNameDataSource);

  late FullNameResult fullNameResult;

  @override
  Future<Result<FullNameResult, Failure>> getFullName(
      FullNameEntities fullNameEntities) async {
    FullNameModel fullNameModel = FullNameModel(
        lName: fullNameEntities.lName,
        name: fullNameEntities.name,
        sName: fullNameEntities.sName);

    try {
      var data = await fullNameDataSource.getData(fullNameModel);

      data.when((success) {
        fullNameResult =
            FullNameResult(id: success.id, message: success.message);
      }, (error) => Error(error));
      return Success(fullNameResult);
    } catch (ee) {
      return Error(Failure.unexpected(ee.toString()));
    }
  }
}
