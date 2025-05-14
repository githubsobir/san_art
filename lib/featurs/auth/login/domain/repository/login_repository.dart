import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/login/domain/entities/login_entities/response/login_response_entities.dart';

abstract class LoginRepository {
  Future<Result<LoginResponseEntities, Failure>> getLogin(
      {required String userName, required String deviceName});
}
