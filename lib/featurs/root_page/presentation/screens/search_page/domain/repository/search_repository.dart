import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/domain/entities/search_entities.dart';

abstract class SearchRepository {
  Future<Result<List<SearchEntities>, Failure>> getData(int page);
}
