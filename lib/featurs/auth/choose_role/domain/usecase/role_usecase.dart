import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/choose_role/domain/entities/user_role_entities.dart';
import 'package:san_art/featurs/auth/choose_role/domain/repository/role_repository.dart';

@injectable
class UserRoleUsecase {
  UserRoleRepository userRoleRepository;

  UserRoleUsecase(this.userRoleRepository);

  Future<Result<List<UserRoleEntities>, Failure>> call() async {
    return await userRoleRepository.getData();
  }
}
