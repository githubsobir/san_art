import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/data/datasources/passport_upload_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/entities/respond/possport_response.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/repository/passport_impl.dart';

@Injectable(as: PassportRepository)
class PassportRepositoryImpl implements PassportRepository {
  PassportUploadDataSource passportUploadDataSource;

  PassportRepositoryImpl({required this.passportUploadDataSource});

  @override
  Future<Result<PassportResponseEntities, Failure>> uploadPassport() async {
    var data = await passportUploadDataSource.getData();

    return data.when((success) {
      return Success(success.toEntity());
    }, (error) => Error(Failure.unexpected(error.toString())));
  }
}
