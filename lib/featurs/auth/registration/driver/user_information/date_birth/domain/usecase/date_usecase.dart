import 'package:injectable/injectable.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/date_birth/domain/entities/request/date_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/date_birth/domain/repository/date_repository.dart';

@injectable
class DateUsecase {
  DateRepository dateRepository;

  DateUsecase(this.dateRepository);

  Future<DateResponseEntities> getData(String date) =>
      dateRepository.getData(date);
}
