import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/data/datasources/stories/datasource_stories.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/stories/stories_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/repository/stories/repository_user.dart';

@Injectable(as: StoriesRepository)
class StoriesRepositoryImpl implements StoriesRepository {
  final StoriesRemoteDataSource remoteDataSource;

  StoriesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Result<List<StoriesEntities>, Failure>> getStories() async {
    try {
      final stories = await remoteDataSource.getStories();
      log("stories");
      log("stories");
      log(jsonEncode(stories).toString());
      log("stories");
      final entities = stories.map((model) => model.toEntity()).toList();
      return Success(entities);
    } on DioException catch (e) {
      return Error(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
