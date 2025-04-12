import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_entities.freezed.dart';

@freezed
abstract class SearchEntities with _$SearchEntities {
  factory SearchEntities(
      {required dynamic postId,
      required dynamic id,
      required dynamic name,
      required dynamic email,
      required dynamic body}) = _SearchEntities;
}
