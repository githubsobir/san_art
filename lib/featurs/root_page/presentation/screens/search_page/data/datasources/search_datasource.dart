import 'dart:developer';
import 'package:injectable/injectable.dart';

import 'package:dio/dio.dart';
import 'package:san_art/core/network/urls.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/data/model/model_search.dart';

abstract class SearchDataSource {
  Future<List<ModelSearch>> getData({required int page});
}

@Injectable(as: SearchDataSource)
class SearchDataSourceImpl implements SearchDataSource {
  Dio dio;

  SearchDataSourceImpl(this.dio);

  @override
  Future<List<ModelSearch>> getData({required int page}) async {
    try {
      log('${UrlApp.storiesUrl}/posts/$page/comments');
      final response = await dio
          .get('${UrlApp.storiesUrl}/posts/${page.toString()}/comments');
      log(response.data.toString());
      return (response.data as List)
          .map((userData) => ModelSearch.fromJson(userData))
          .toList();
    } on DioException catch (e) {
      throw Exception('Failed to load users: ${e.message}');
    } catch (ee) {
      log("888");
      log(ee.toString());
      return [];
    }
  }
}
