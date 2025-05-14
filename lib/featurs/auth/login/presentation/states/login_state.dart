import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/login/domain/entities/login_entities/response/login_response_entities.dart';
import 'package:san_art/featurs/auth/login/domain/usecases/login_usecase.dart';


final nextPageProvider = StateProvider<int>((ref) => 0);

class LoginNotifier extends AsyncNotifier<LoginResponseEntities?> {
  late final LoginUsecase _loginUsecase;

  @override
  FutureOr<LoginResponseEntities?> build() {
    _loginUsecase = getIt<LoginUsecase>();
    // Boshlang'ich holat null
    return null;
  }

  // Login jarayoni uchun metod
  Future<void> sendMessage(
      {required String userName, required String deviceName}) async {
    // Loading holatiga o'tish
    state = const AsyncLoading();

    try {
      final result = await _loginUsecase.getLogin(
          userName: userName, deviceName: deviceName);

      // Result obyektini qayta ishlaymiz
      state = await result.when(
            (success) {
          log("Login muvaffaqiyatli: ${success.toString()}");
          // Login ma'lumotini state ga berish
          return AsyncData(success);
        },
            (error) {
          log("Login xatosi: ${error.message}");
          // Xato holatini qaytarish
          return AsyncError(error, StackTrace.current);
        },
      );
    } catch (e) {
      log("Login jarayonida kutilmagan xato: $e");
      state = AsyncError(Failure.unexpected(e.toString()), StackTrace.current);
    }
  }

  // Getter metodlar UI uchun (optsional)
  bool get isLoggedIn => state.valueOrNull != null;
}

final loginNotifierProvider =
AsyncNotifierProvider<LoginNotifier, LoginResponseEntities?>(
      () => LoginNotifier(),
);
