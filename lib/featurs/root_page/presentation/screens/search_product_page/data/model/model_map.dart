import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/images/image_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/lat_lang/lat_lang_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/map_entities.dart';

part 'model_map.freezed.dart';
part 'model_map.g.dart';

@freezed
abstract class ModelMap with _$ModelMap {
   factory ModelMap({
    required String id,
    required String name,
    required String description,
    required List<LangLatModel> langLat,
    required List<ImagesModel> images,
  }) = _ModelMap;

  factory ModelMap.fromJson(Map<String, dynamic> json) =>
      _$ModelMapFromJson(json);

  ModelMap._();

  MapEntities toEntities() => MapEntities(
      id: id,
      name: name,
      description: description,
      langLat: langLat.map((e) => e.toEntities()).toList(),
      images: images.map((e) => e.toEntities()).toList());
}

@freezed
abstract class LangLatModel with _$LangLatModel {
   factory LangLatModel({
    required String lat,
    required String lang,
  }) = _LangLatModel;

  factory LangLatModel.fromJson(Map<String, dynamic> json) =>
      _$LangLatModelFromJson(json);

  LangLatModel._();

  LangLat toEntities() => LangLat(lat: lat, lang: lang);
}

@freezed
abstract class ImagesModel with _$ImagesModel {
   factory ImagesModel({required String id, required String url}) =
      _ImagesModel;

  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);

  ImagesModel._();

  Images toEntities() => Images(id: id, url: url);
}
