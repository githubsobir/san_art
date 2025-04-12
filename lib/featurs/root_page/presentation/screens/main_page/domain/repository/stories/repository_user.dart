import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/stories/stories_entities.dart';

abstract class StoriesRepository {
  Future<Result<List<StoriesEntities>, Failure>> getStories();
}
