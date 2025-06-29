import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/entities/request/choose_payment_entities.dart';

abstract class PaymentRepository {
  Future<Result<List<PaymentMethod>, String>> getPaymentMethods();
}
