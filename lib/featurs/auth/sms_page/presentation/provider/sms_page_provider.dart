import 'dart:async';
import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/data/hive_san_art.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/request/sms_page_req_entites.dart';
import 'package:san_art/featurs/auth/sms_page/domain/entities/respond/sms_page_entities.dart';
import 'package:san_art/featurs/auth/sms_page/domain/usecase/sms_usecase.dart';

final smsTimeEnd = StateProvider<bool>((ref) => true);

final smsTimer = StateProvider<int>((ref) => 299);

final smsNotifierProvider =
AsyncNotifierProvider<SmsPageNotifier, SmsPageEntities?>(
      () => SmsPageNotifier(),
);


class SmsPageNotifier extends AsyncNotifier<SmsPageEntities?> {
  late final SmsUsecase _smsUsecase;
  var box = HiveBoxes();
  @override
  FutureOr<SmsPageEntities?> build() {
    _smsUsecase = getIt<SmsUsecase>();
    // Boshlang'ich holat null
    return null;
  }

  // Login jarayoni uchun metod
  Future<void> sendMessage(
      {required String userName,
      required LoginSmsRequestEntities loginSmsRequestEntities}) async {
    // Loading holatiga o'tish
    state = const AsyncLoading();

    try {
      final result = await _smsUsecase.execute(loginSmsRequestEntities);

      // Result obyektini qayta ishlaymiz
      state = await result.when(
        (success) {
          box.userToken = success.token??"-1";
          log("sms muvaffaqiyatli: ${success.toString()}");
          // Login ma'lumotini state ga berish
          (success.token);
          return AsyncData(success);
        },
        (error) {

          log("sms xatosi: ${error.message}");
          // Xato holatini qaytarish
          return AsyncError(error, StackTrace.current);
        },
      );
    } catch (e) {
      log("sms jarayonida kutilmagan xato: $e");
      state = AsyncError(Failure.unexpected(e.toString()), StackTrace.current);
    }
  }

  // Getter metodlar UI uchun (optsional)
  bool get isLoggedIn => state.valueOrNull != null;
}

