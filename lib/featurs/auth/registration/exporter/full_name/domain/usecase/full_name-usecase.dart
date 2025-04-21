import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/full_name_entities.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/result/full_name_result.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/repository/full_name_repository.dart';

class FullNameUsecase {
  FullNameRepository fullNameRepository;

  FullNameUsecase(this.fullNameRepository);

  Future<Result<FullNameResult, Failure>> getFullName(
      FullNameEntities fullNameEntities) async {
    return await fullNameRepository.getFullName(fullNameEntities);
  }
}
