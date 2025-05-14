import 'package:injectable/injectable.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/date_birth/data/datasources/date_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/date_birth/domain/entities/request/date_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/date_birth/domain/repository/date_repository.dart';

@Injectable(as: DateRepository)
class DateRepositoryImpl implements DateRepository {

  DateDataSource dataSource;
  DateRepositoryImpl(this.dataSource);

  @override
  Future<DateResponseEntities> getData(String date) {
    // TODO: implement getData
    throw UnimplementedError();
  }
}
