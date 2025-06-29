import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/domain/entities/respond/car_weigth.dart';
import 'package:san_art/featurs/auth/registration/driver/car_information/car_main_reg/presentation/other_pages/car_weigth/domain/usecase/car_weigth_usecase.dart';

// UseCase provider
final getCarWeightUseCaseProvider = Provider<CarWeightUsecase>((ref) {
  return GetIt.instance<CarWeightUsecase>();
});

// Weight methods provider
final controllerWeight = FutureProvider<List<CarWeightEntity>>((ref) async {
  try {
    log("Provider: weight methods yuklanmoqda...");

    final useCaseWeight = ref.read(getCarWeightUseCaseProvider);
    final result = await useCaseWeight.getData();

    return result.when(
      (success) {
        log("Provider: ${success.length} ta weight method keldi");
        return success;
      },
      (error) {
        log("Provider: Xatolik - $error");
        throw Exception(error);
      },
    );
  } catch (e) {
    log("Provider: Exception - $e");
    throw Exception('Failed to load weight methods: $e');
  }
});

/// shu yerdan boshlayman
// Selected payment method provider (optional)
final selectedWeightMethodProvider =
    StateProvider<CarWeightEntity?>((ref) => null);

// Loading state provider (optional)
final weightLoadingProvider = StateProvider<bool>((ref) => false);
