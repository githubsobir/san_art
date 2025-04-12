import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/choose_role/domain/entities/user_role_entities.dart';

abstract class UserRoleRepository {
  Future<Result<List<UserRoleEntities>, Failure>> getData();
}
