import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/auth/login/domain/entities/get_region_entities.dart';
import 'package:san_art/featurs/auth/login/domain/usecases/get_region_usecase.dart';

// Dartz kutubxonasi Either tipi bilan xatolar boshqariladi
class UserNotifier extends AsyncNotifier<Result<List<RegionEntity>, Failure>> {
  late final GetRegionsUseCase _getUsersUseCase;

  @override
  Future<Result<List<RegionEntity>, Failure>> build() async {
    state = const AsyncValue.loading();
    // get_it orqali UseCase ni olish
    _getUsersUseCase = getIt<GetRegionsUseCase>();

    try {
      // UseCase dan natijani olish
      final result = await _getUsersUseCase.call();

      // Result tipini tekshirish
      return result.when(
        (success) {
          // AsyncValue.data holatiga o'tkazish
          state = AsyncValue.data(result);
          return Success(success);
        },
        (error) {
          // Xatolik bo'lsa, xato holatiga o'tkazish
          state = AsyncValue.error(error, StackTrace.current);
          return Error(error);
        },
      );
    } catch (e) {
      // Agar catch'ga tushsa, xato holatiga o'tkazish
      state = AsyncValue.error(e, StackTrace.current);
      return Error(Failure.unexpected(e.toString()));
    }
  }

}

// Provider'ni ro'yxatdan o'tkazish
final userNotifierProvider =
    AsyncNotifierProvider<UserNotifier, Result<List<RegionEntity>, Failure>>(
        () {
  return UserNotifier();
});
