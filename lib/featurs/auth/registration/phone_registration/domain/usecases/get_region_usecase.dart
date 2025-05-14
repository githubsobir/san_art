import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/region/get_region_entities.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/repository/region_repository.dart';

@injectable
class RegistrationPhoneGetRegionsUseCase {
  final RegistrationPhoneRegionRepository repository;

  RegistrationPhoneGetRegionsUseCase(this.repository);

  Future<Result<List<RegistrationPhoneRegionEntity>, Failure>> call() async {
    final result = await repository.getRegions();

    return result;
  }
}
