import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/domain/entities/search_entities.dart';

part 'model_search.freezed.dart';
part 'model_search.g.dart';

@freezed
abstract class ModelSearch with _$ModelSearch {
  factory ModelSearch(
          {required dynamic postId,
          required dynamic id,
          required dynamic name,
            required dynamic body,
          required dynamic email}) =
      _ModelSearch;

  factory ModelSearch.fromJson(Map<String, dynamic> json) =>
      _$ModelSearchFromJson(json);

  ModelSearch._();

  SearchEntities toEntity() =>
      SearchEntities(postId: postId, id: id, name: name, email: email, body: body);
}
