import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/registration_entities/registration_entities.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/registration_entities/registration_response.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/usecases/registration_usecase.dart';

class RegistrationNotifier
    extends AsyncNotifier<RegistrationResponseEntities?> {
  late final RegistrationUsecase _registrationUsecase;

  @override
  FutureOr<RegistrationResponseEntities?> build() {
    _registrationUsecase = getIt<RegistrationUsecase>();
    return RegistrationResponseEntities(detail: "");
  }

  // Login jarayoni uchun metod
  Future<void> sendMessage(
      {required String userName, required String deviceName}) async {

    state = const AsyncLoading();

    try {
      final result = await _registrationUsecase.call(
          RegistrationRequestEntities(
              username: userName, device_name: deviceName));

      // Result obyektini qayta ishlaymiz
      state = await result.when(
        (success) {
          log("registratsiya muvaffaqiyatli: ${success.toString()}");
          // Login ma'lumotini state ga berish
          return AsyncData(success);
        },
        (error) {
          log("registratsiya xatosi: ${error.message}");
          // Xato holatini qaytarish
          return AsyncError(error, StackTrace.current);
        },
      );
    } catch (e) {
      log("registratsiya jarayonida kutilmagan xato: $e");
      state = AsyncError(Failure.unexpected(e.toString()), StackTrace.current);
    }
  }

  // Getter metodlar UI uchun (optsional)
  bool get isLoggedIn => state.valueOrNull != null;
}

final registrationNotifierProvider =
    AsyncNotifierProvider<RegistrationNotifier, RegistrationResponseEntities?>(
  () => RegistrationNotifier(),
);
