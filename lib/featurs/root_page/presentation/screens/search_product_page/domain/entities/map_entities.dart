import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/images/image_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_product_page/domain/entities/lat_lang/lat_lang_entities.dart';

part 'map_entities.freezed.dart';
part 'map_entities.g.dart';

@freezed
abstract class MapEntities with _$MapEntities {
  const factory MapEntities({
    required String id,
    required String name,
    required String description,
    required List<LangLat> langLat,
    required List<Images> images,
  }) = _MapEntities;

  factory MapEntities.fromJson(Map<String, dynamic> json) =>
      _$MapEntitiesFromJson(json);
}
