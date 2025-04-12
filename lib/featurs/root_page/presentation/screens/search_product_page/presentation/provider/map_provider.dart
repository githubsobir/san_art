// map_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/lat_lang/lat_lang_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/usecase/usecase_map.dart';

import '../../domain/entities/map_entities.dart';

class MapAsyncNotifier
    extends AsyncNotifier<Result<List<MapEntities>, Failure>> {
  @override
  Future<Result<List<MapEntities>, Failure>> build() async {
    state = const AsyncValue.loading();
    final result = await ref
        .read(mapUsecaseProvider)
        .getData(LangLat(lang: "41.3189943", lat: "69.2762636"));
    return result;
  }

  Future<Result<List<MapEntities>, Failure>> getMapData(LangLat latLang) async {

    state = const AsyncValue.loading();
    final result = await ref.read(mapUsecaseProvider).getData(latLang);
    return result;
  }
}

final mapProvider =
    AsyncNotifierProvider<MapAsyncNotifier, Result<List<MapEntities>, Failure>>(
        () {
  return MapAsyncNotifier();
});

final mapUsecaseProvider = Provider<MapUsecase>((ref) {
  return getIt<MapUsecase>();
});
