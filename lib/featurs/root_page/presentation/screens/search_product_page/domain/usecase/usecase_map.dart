import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/lat_lang/lat_lang_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/map_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/repository/repository_map.dart';
import 'package:injectable/injectable.dart';

@injectable
class MapUsecase {
  MapRepository repositoryMap;

  MapUsecase(this.repositoryMap);

  Future<Result<List<MapEntities>, Failure>> getData(LangLat1 latLang) =>
      repositoryMap.getData(latLang);
}
