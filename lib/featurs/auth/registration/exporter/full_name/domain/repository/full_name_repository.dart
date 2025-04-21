import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/full_name_entities.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/result/full_name_result.dart';

abstract class FullNameRepository {
  Future<Result<FullNameResult, Failure>> getFullName(
      FullNameEntities fullNameEntities);
}
