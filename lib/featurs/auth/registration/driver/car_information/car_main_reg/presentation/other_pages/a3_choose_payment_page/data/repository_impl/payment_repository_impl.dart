import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/data/datasources/payment_remote_datasource.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/data/model/request/payment_method_model.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/entities/request/choose_payment_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/repository/payment_method.dart';

@Injectable(as: PaymentRepository)
class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDataSource _remoteDataSource;

  PaymentRepositoryImpl(this._remoteDataSource);

  @override
  Future<Result<List<PaymentMethod>, String>> getPaymentMethods() async {
    final result = await _remoteDataSource.getPaymentMethods();
    log("001");
    return result.when(
      (success) {
        log("002");
        return Success(success.map((model) {
          log("0007");
          log(model.toString());
          return model.toEntity();
        }).toList());
      },
      (error) {
        log("003");
        return Error(error.toString());
      },
    );
  }
}
