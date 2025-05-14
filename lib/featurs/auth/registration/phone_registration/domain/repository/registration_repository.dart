import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/registration_entities/registration_entities.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/registration_entities/registration_response.dart';

abstract class RegistrationRepository {
  Future<Result<RegistrationResponseEntities, Failure>> registration(
      RegistrationRequestEntities registrationRequest);
}
