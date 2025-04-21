import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/domain/entities/search_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/domain/usecase/search_usecase.dart';

final searchAppUseCase = Provider<SearchUsecase>((ref) {
  return getIt<SearchUsecase>();
});

final searchPageProvider =
    AsyncNotifierProvider<ListApp, List<SearchEntities>>(ListApp.new);

class ListApp extends AsyncNotifier<List<SearchEntities>> {
  @override
  Future<List<SearchEntities>> build() async {
    state = AsyncValue.loading();
    final useCase = ref.read(searchAppUseCase);
    var data = await useCase.call(1);
    return data.when(
      (success) => success,
      (error) => [],
    );
  }

  int pageN = 0;

  Future<void> getSearchApp(int page) async {
    if (state.isLoading) {
      return; // Agar yuklanayotgan bo'lsa, yangi so'rovni boshlama
    }
    try {
      final useCase = ref.read(searchAppUseCase);
      var data = await useCase.call(page);

      data.when(
        (success) {
          final currentList = state.value ?? []; // Joriy listni olish
          state = AsyncValue.data([
            ...currentList,
            ...success
          ]); // Eski va yangi ma'lumotlarni birlashtirish
        },
        (error) {
          state = AsyncValue.error(error, StackTrace.current);
        },
      );
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
