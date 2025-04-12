import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:san_art/core/network/urls.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/data/model/stories/stories_model.dart';


abstract class StoriesRemoteDataSource {
  Future<List<StoriesModels>> getStories();
}

@Injectable(as: StoriesRemoteDataSource)
class StoriesRemoteDataSourceImpl implements StoriesRemoteDataSource {
  final Dio dio;

  StoriesRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<StoriesModels>> getStories() async {
    try {
      log('SOBIR');
      log('${UrlApp.storiesUrl}/users');
      final response = await dio.get('${UrlApp.storiesUrl}/users');
      return (response.data as List)
          .map((userData) => StoriesModels.fromJson(userData))
          .toList();
    } on DioException catch (e) {
      throw Exception('Failed to load users: ${e.message}');
    }
    catch(ee){
      log("888");
      log(ee.toString());
      return [];
    }
  }


}
