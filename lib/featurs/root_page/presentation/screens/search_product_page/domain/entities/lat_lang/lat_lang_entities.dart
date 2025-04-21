import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_lang_entities.freezed.dart';

part 'lat_lang_entities.g.dart';

@freezed
abstract class LangLat1 with _$LangLat1 {
  const factory LangLat1({
    required String lat,
    required String lang,
  }) = _LangLat1;

  factory LangLat1.fromJson(Map<String, dynamic> json) =>
      _$LangLat1FromJson(json);
}
