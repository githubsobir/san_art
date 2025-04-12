import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_lang_entities.freezed.dart';
part 'lat_lang_entities.g.dart';

@freezed
abstract class LangLat with _$LangLat {
  const factory LangLat({
    required String lat,
    required String lang,
  }) = _LangLat;

  factory LangLat.fromJson(Map<String, dynamic> json) =>
      _$LangLatFromJson(json);
}
