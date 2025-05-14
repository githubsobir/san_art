import 'package:san_art/featurs/auth/registration/driver/user_information/date_birth/domain/entities/request/date_entities.dart';

abstract class DateRepository {
  Future<DateResponseEntities> getData(String date);
}
