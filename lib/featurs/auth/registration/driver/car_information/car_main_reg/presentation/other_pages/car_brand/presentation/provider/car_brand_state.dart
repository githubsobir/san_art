import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/domain/entities/respond/car_brand_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_brand/domain/usecase/car_brand_usecase.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/entities/respond/car_type_entities.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_type/domain/usecase/car_type_usecase.dart';

// UseCase provider
final getCarBrandUseCaseProvider = Provider<CarBrandUsecase>((ref) {
  return GetIt.instance<CarBrandUsecase>();
});

// Car Brand methods provider
final controllerCarBrand = FutureProvider<List<CarBrandEntities>>((ref) async {
  try {
    log("Provider: car brand methods yuklanmoqda...");

    final useCase = ref.read(getCarBrandUseCaseProvider);
    final result = await useCase.getCarBrand();

    return result.when(
          (success) {
        log("Provider: ${success.length} ta car brand method keldi");
        return success;
      },
          (error) {
        log("Provider: Xatolik - $error");
        throw Exception(error);
      },
    );
  } catch (e) {
    log("Provider: Exception - $e");
    throw Exception('Failed to load car brand methods: $e');
  }
});

// Selected payment method provider (optional)
final selectedCarBrandProvider = StateProvider<CarTypeEntities?>((ref) => null);

