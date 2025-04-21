import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/data/datasource/map_data_source.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/data/model/model_map.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/lat_lang/lat_lang_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/map_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/repository/repository_map.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: MapRepository)
class MapRepositoryImpl implements MapRepository {
  MapDataSource mapDataSource;

  MapRepositoryImpl(this.mapDataSource);

  @override
  Future<Result<List<MapEntities>, Failure>> getData(LangLat1 latLang) async {
    try {
      final langLatModel = LangLatModel(lat: latLang.lat, lang: latLang.lang);
      final result = await mapDataSource.data(langLatModel);

      return result.when(
        (success) => Success(success.map((e) => e.toEntities()).toList()),
        (error) => Error(Failure.unexpected(error.message)),
      );
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
