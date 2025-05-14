import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/data/datasources/registation_data_source.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/data/models/registration/request/registration.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/registration_entities/registration_entities.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/registration_entities/registration_response.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/repository/registration_repository.dart';

@Injectable(as: RegistrationRepository)
class RegistrationRepositoryImpl implements RegistrationRepository {
  RegistrationDataSource registrationDataSource;

  RegistrationRepositoryImpl(this.registrationDataSource);

  @override
  Future<Result<RegistrationResponseEntities, Failure>> registration(
      RegistrationRequestEntities registrationRequest) async {
    var data = await registrationDataSource.getData(RegistrationModel(
        username: registrationRequest.username,
        device_name: registrationRequest.device_name));
    return data.when(
      (success) => Success(success.toEntity()),
      (error) => Error(Failure.unexpected(error.toString())),
    );
  }
}
