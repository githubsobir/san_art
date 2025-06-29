import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/entities/respond/car_type_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/usecase/car_type_usecase.dart';

// UseCase provider
final getCarTypeUseCaseProvider = Provider<CarTypeUsecase>((ref) {
  return GetIt.instance<CarTypeUsecase>();
});

// Car Type methods provider
final controllerCarType = FutureProvider<List<CarTypeEntities>>((ref) async {
  try {
    log("Provider: car type methods yuklanmoqda...");

    final useCase = ref.read(getCarTypeUseCaseProvider);
    final result = await useCase.getCarType();

    return result.when(
          (success) {
        log("Provider: ${success.length} ta car type method keldi");
        return success;
      },
          (error) {
        log("Provider: Xatolik - $error");
        throw Exception(error);
      },
    );
  } catch (e) {
    log("Provider: Exception - $e");
    throw Exception('Failed to load car type methods: $e');
  }
});

// Selected payment method provider (optional)
final selectedCarTypeProvider = StateProvider<CarTypeEntities?>((ref) => null);

