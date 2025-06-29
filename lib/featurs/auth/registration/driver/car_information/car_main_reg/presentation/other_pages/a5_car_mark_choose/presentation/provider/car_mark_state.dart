import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/domain/entities/respond/car_mark_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/a5_car_mark_choose/domain/usecase/car_mark_usecase.dart';

// UseCase provider
final getCarMarkUseCaseProvider = Provider<CarMarkUsecase>((ref) {
  return GetIt.instance<CarMarkUsecase>();
});

// Payment methods provider
final controllerCarMark = FutureProvider<List<CarMarkEntities>>((ref) async {
  try {
    log("Provider: car mark methods yuklanmoqda...");

    final useCase = ref.read(getCarMarkUseCaseProvider);
    final result = await useCase.data();

    return result.when(
      (success) {
        log("Provider: ${success.length} ta car mark method keldi");
        return success;
      },
      (error) {
        log("Provider: Xatolik - $error");
        throw Exception(error);
      },
    );
  } catch (e) {
    log("Provider: Exception - $e");
    throw Exception('Failed to load car mark methods: $e');
  }
});

// Selected carMark method provider (optional)
final selectedCarMarkMethodProvider =
    StateProvider<CarMarkEntities?>((ref) => null);

// Loading state provider (optional)
final carMarkLoadingProvider = StateProvider<bool>((ref) => false);
