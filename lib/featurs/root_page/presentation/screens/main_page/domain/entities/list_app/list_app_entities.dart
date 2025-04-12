import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_app_entities.freezed.dart';

@freezed
abstract class ListAppEntities with _$ListAppEntities {
  factory ListAppEntities({
    required dynamic postId,
    required dynamic id,
    required dynamic name,
    required dynamic email,
    required dynamic body,
    required List<ListAppImagesEntities> listAppImages
  }) = _ListAppEntities;
}

@freezed
abstract class ListAppImagesEntities with _$ListAppImagesEntities {
  factory ListAppImagesEntities({
    required dynamic images
  }) = _ListAppImagesEntities;
}