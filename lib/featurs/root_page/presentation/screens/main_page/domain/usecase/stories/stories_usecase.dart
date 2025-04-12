import 'dart:developer';

import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/stories/stories_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/repository/stories/repository_user.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetStoriesUseCase {
  final StoriesRepository repository;

  GetStoriesUseCase(this.repository);

  Future<Result<List<StoriesEntities>, Failure>> call() async {
    log("GetStoriesUseCase");
    return await repository.getStories();
  }
}
