import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/domain/entities/respond/car_color_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_color/domain/usecase/car_color_usecase.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/entities/respond/car_type_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/usecase/car_type_usecase.dart';

// UseCase provider
final getCarColorUseCaseProvider = Provider<CarColorUsecase>((ref) {
  return GetIt.instance<CarColorUsecase>();
});

// Car Type methods provider
final controllerCarColor = FutureProvider<List<CarColorEntities>>((ref) async {
  try {
    log("Provider: car color methods yuklanmoqda...");

    final useCase = ref.read(getCarColorUseCaseProvider);
    final result = await useCase.getData();

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
final selectedCarColorProvider = StateProvider<CarColorEntities?>((ref) => null);

