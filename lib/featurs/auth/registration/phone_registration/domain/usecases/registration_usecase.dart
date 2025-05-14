import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/registration_entities/registration_entities.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/registration_entities/registration_response.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/repository/registration_repository.dart';

@injectable
class RegistrationUsecase {
  RegistrationRepository registrationRepository;

  RegistrationUsecase(this.registrationRepository);

  Future<Result<RegistrationResponseEntities, Failure>> call(
      RegistrationRequestEntities registrationRequest) async {
    return await registrationRepository.registration(registrationRequest);
  }
}
