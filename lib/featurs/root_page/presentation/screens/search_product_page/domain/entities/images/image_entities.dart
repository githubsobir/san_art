import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_entities.freezed.dart';
part 'image_entities.g.dart';

@freezed
abstract class Images with _$Images {
  const factory Images({
    required String url,
    required String id,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
