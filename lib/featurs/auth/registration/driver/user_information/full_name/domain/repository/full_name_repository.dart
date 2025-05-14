import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/request/full_name_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/response/full_name_result.dart';

abstract class FullNameDriverRepository {
  Future<Result<FullNameDriverResult, Failure>> getFullName(
      FullNameDriverEntities fullNameEntities);
}
