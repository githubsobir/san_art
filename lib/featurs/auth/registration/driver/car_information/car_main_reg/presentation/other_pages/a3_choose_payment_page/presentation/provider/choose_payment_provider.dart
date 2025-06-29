import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/entities/request/choose_payment_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a3_choose_payment_page/domain/usecase/get_payment_methods_usecase.dart';

// UseCase provider
final getPaymentMethodsUseCaseProvider = Provider<GetPaymentMethodsUseCase>((ref) {
  return GetIt.instance<GetPaymentMethodsUseCase>();
});

// Payment methods provider
final controllerPayment = FutureProvider<List<PaymentMethod>>((ref) async {
  try {
    log("Provider: Payment methods yuklanmoqda...");

    final useCase = ref.read(getPaymentMethodsUseCaseProvider);
    final result = await useCase.call();

    return result.when(
          (success) {
        log("Provider: ${success.length} ta payment method keldi");
        return success;
      },
          (error) {
        log("Provider: Xatolik - $error");
        throw Exception(error);
      },
    );
  } catch (e) {
    log("Provider: Exception - $e");
    throw Exception('Failed to load payment methods: $e');
  }
});

// Selected payment method provider (optional)
final selectedPaymentMethodProvider = StateProvider<PaymentMethod?>((ref) => null);

// Loading state provider (optional)
final paymentLoadingProvider = StateProvider<bool>((ref) => false);