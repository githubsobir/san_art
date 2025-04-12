import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/login/domain/entities/get_region_entities.dart';

abstract class RegionRepository {
  Future<Result<List<RegionEntity>, Failure>> getRegions();
}
