import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/lat_lang/lat_lang_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/map_entities.dart';

abstract class MapRepository {
  Future<Result<List<MapEntities>, Failure>> getData(LangLat1 latLang);
}
