import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/list_app/list_app_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/stories/stories_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/usecase/list_app/list_app_usecase.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/usecase/stories/stories_usecase.dart';

/// main page qidiruv kontentini ochilib yopilish holatiga javobgar
final controllerSearchOpen = StateProvider<bool>((ref) => false);

/// qidiruv kontentini o'zgaruvchilarini olish
final controllerMainPageCity1Name = StateProvider((ref) => "");
final controllerMainPageCity1Id = StateProvider((ref) => "");
final controllerMainPageCity2Name = StateProvider((ref) => "");
final controllerMainPageCity2Id = StateProvider((ref) => "");

/// stories
final getStoriesUseCaseProvider = Provider<GetStoriesUseCase>((ref) {
  return getIt<GetStoriesUseCase>();
});

final storiesProvider =
    FutureProvider<Result<List<StoriesEntities>, Failure>>((ref) async {
  final useCase = ref.read(getStoriesUseCaseProvider);
  return await useCase.call();
});

///

final listAppProvider =
    AsyncNotifierProvider<ListApp, List<ListAppEntities>>(ListApp.new);

class ListApp extends AsyncNotifier<List<ListAppEntities>> {
  @override
  Future<List<ListAppEntities>> build() async {
    state = AsyncValue.loading();
    final useCase = ref.read(getListAppUseCaseProvider);
    var data = await useCase.call(1);
    return data.when(
      (success) => success,
      (error) => [],
    );
  }

  int pageN = 0;

  Future<void> getListApp(int page) async {
    if (pageN == 0) {
      pageN = page;
      final useCase = ref.read(getListAppUseCaseProvider);
      var data = await useCase.call(page);
      data.when(
        (success) {
          final currentList = state.value ?? [];
          if(currentList.isEmpty) {
            state =
                AsyncValue.data(success); // Yangi ro'yxat
             }else{
            state =
                AsyncValue.data([...success]);
          }
          pageN = 0;
        },
        (error) {
          state = AsyncValue.error(error, StackTrace.current); // Xatolik holati
        },
      );
    }
  }
}

/// list app
final getListAppUseCaseProvider = Provider<ListAppUsecase>((ref) {
  return getIt<ListAppUsecase>();
});

final appListProvider =
    FutureProvider.family<Result<List<ListAppEntities>, Failure>, int>(
        (ref, page) async {
  final useCase = ref.read(getListAppUseCaseProvider);

  return await useCase.call(page);
});
