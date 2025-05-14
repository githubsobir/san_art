import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/region/get_region_entities.dart';

abstract class RegistrationPhoneRegionRepository {
  Future<Result<List<RegistrationPhoneRegionEntity>, Failure>> getRegions();
}
