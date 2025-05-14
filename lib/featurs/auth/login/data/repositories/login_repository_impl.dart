import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/login/data/datasources/login_remote_data_source.dart';
import 'package:san_art/featurs/auth/login/domain/entities/login_entities/response/login_response_entities.dart';
import 'package:san_art/featurs/auth/login/domain/repository/login_repository.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryIml implements LoginRepository {
  LoginRemoteDataSource loginRemoteDataSource;

  LoginRepositoryIml({required this.loginRemoteDataSource});

  @override
  Future<Result<LoginResponseEntities, Failure>> getLogin(
      {required String userName, required String deviceName}) async {
    try {
      final result = await loginRemoteDataSource.getData(
          userName: userName, deviceName: deviceName);

      return result.when(
        (success) => Success(success.toEntity()),
        (error) => Error(error),
      );
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
