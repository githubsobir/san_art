import 'dart:developer';

import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/entities/request/choose_payment_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/repository/payment_method.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPaymentMethodsUseCase {
  final PaymentRepository _repository;

  GetPaymentMethodsUseCase(this._repository);

  Future<Result<List<PaymentMethod>, String>> call() async {
    try {
      log("111 - UseCase boshlandi");
      log("Repository: ${_repository.toString()}");

      var result = await _repository.getPaymentMethods();

      log("004 - Repository dan javob keldi");
      log("Result isSuccess: ${result.isSuccess().toString()}");

      return result;
    } catch (e, stackTrace) {
      log("UseCase da xatolik yuz berdi: $e");
      log("StackTrace: $stackTrace");
      return Error("UseCase error: $e");
    }
  }
}