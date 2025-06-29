import 'dart:convert';
import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/choose_role/data/datasources/choose_role_datasource.dart';
import 'package:san_art/featurs/auth/choose_role/domain/entities/user_role_entities.dart';
import 'package:san_art/featurs/auth/choose_role/domain/repository/role_repository.dart';

@Injectable(as: UserRoleRepository)
class RoleRepositoryIml implements UserRoleRepository {
  ChoseRoleDataSource choseRoleDataSource;

  RoleRepositoryIml(this.choseRoleDataSource);

  @override
  Future<Result<List<UserRoleEntities>, Failure>> getData() async {
    try {
      var getRoleModels = await choseRoleDataSource.getData();
      log("Sobir");
      log(jsonEncode(getRoleModels));
      final regions = getRoleModels.map((model) => model.toEntity()).toList();


      return Success(regions);
    } catch (e) {
      return Error(Failure.unexpected('Unexpected error: $e'));
    }
  }
}
