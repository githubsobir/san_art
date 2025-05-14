import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/request/full_name_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/response/full_name_result.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/repository/full_name_repository.dart';

class FullNameDriverUsecase {
  FullNameDriverRepository fullNameRepository;

  FullNameDriverUsecase(this.fullNameRepository);

  Future<Result<FullNameDriverResult, Failure>> getFullName(
      FullNameDriverEntities fullNameEntities) async {
    return await fullNameRepository.getFullName(fullNameEntities);
  }
}
