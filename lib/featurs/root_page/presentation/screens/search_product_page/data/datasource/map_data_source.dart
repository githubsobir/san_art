import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/data/model/model_map.dart';

abstract class MapDataSource {
  Future<Result<List<ModelMap>, Failure>> data(LangLatModel langLat);
}

@Injectable(as: MapDataSource)
class MapDataSourceImpl implements MapDataSource {
  @override
  Future<Result<List<ModelMap>, Failure>> data(LangLatModel langLat) async {
    try {
      return Success([
        ModelMap(
            id: "1",
            name: "name",
            description: "description",
            langLat: LangLatModel(lang: "41.3089943", lat: "69.2742636"),
            images: [
              ImagesModel(
                  id: "id",
                  url:
                      "https://avatars.mds.yandex.net/i?id=29246f5983dba1070b1586390fb92c5e_l-5225958-images-thumbs&n=13")
            ]),
        ModelMap(
            id: "1",
            name: "name",
            description: "description",
            langLat: LangLatModel(lang: "41.3019943", lat: "69.2792636"),
            images: [
              ImagesModel(
                  id: "id",
                  url:
                      "https://avatars.mds.yandex.net/i?id=29246f5983dba1070b1586390fb92c5e_l-5225958-images-thumbs&n=13")
            ]),
        ModelMap(
            id: "1",
            name: "name",
            description: "description",
            langLat: LangLatModel(lang: "41.3189943", lat: "69.2762636"),
            images: [
              ImagesModel(
                  id: "id",
                  url:
                      "https://avatars.mds.yandex.net/i?id=29246f5983dba1070b1586390fb92c5e_l-5225958-images-thumbs&n=13")
            ]),
        ModelMap(
            id: "1",
            name: "name",
            description: "description",
            langLat: LangLatModel(lang: "41.3289943", lat: "69.2342636"),
            images: [
              ImagesModel(
                  id: "id",
                  url:
                      "https://avatars.mds.yandex.net/i?id=29246f5983dba1070b1586390fb92c5e_l-5225958-images-thumbs&n=13")
            ]),
      ]);
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
