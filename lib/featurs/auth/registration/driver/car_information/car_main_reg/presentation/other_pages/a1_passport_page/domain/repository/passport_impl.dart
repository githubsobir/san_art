import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a1_passport_page/domain/entities/respond/possport_response.dart';

abstract class PassportRepository {
  Future<Result<PassportResponseEntities, Failure>> uploadPassport();
}
