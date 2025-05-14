import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/login/domain/entities/login_entities/response/login_response_entities.dart';
import 'package:san_art/featurs/auth/login/domain/repository/login_repository.dart';

@injectable
class LoginUsecase {
  LoginRepository loginRepository;

  LoginUsecase({required this.loginRepository});

  Future<Result<LoginResponseEntities, Failure>> getLogin(
      {required String userName, required String deviceName}) async {
    return await loginRepository.getLogin(
        userName: userName, deviceName: deviceName);
  }
}
