import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/entities/respond/possport_response.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/repository/passport_impl.dart';

@injectable
class UploadPassportUsecase {
  PassportRepository passportRepository;

  UploadPassportUsecase(this.passportRepository);

  Future<Result<PassportResponseEntities, Failure>> getData(
      {required String carPhotosPath, required String carPhotosName}) async {
    return await passportRepository.uploadPassport();
  }
}
