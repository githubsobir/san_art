import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/login/domain/entities/region/get_region_entities.dart';
import 'package:san_art/featurs/auth/login/domain/repository/region_repository.dart';

@injectable
class GetRegionsUseCase {
  final RegionRepository repository;

  GetRegionsUseCase(this.repository);

  Future<Result<List<RegionEntity>, Failure>> call() async {
    final result = await repository.getRegions();

    return result;
  }
}
