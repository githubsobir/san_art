import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:san_art/core/network/urls.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/data/model/list_app/model_list_app.dart';

abstract class ListAppDataSource {
  Future<List<ModelListApp>> getData({required int page});
}

@Injectable(as: ListAppDataSource)
class ListAppDataSourceImpl implements ListAppDataSource {
  final Dio dio;

  ListAppDataSourceImpl({required this.dio});

  @override
  Future<List<ModelListApp>> getData({required int page}) async {
    try {
      log('${UrlApp.storiesUrl}/posts/$page/comments');
      final response =
          await dio.get('${UrlApp.storiesUrl}/posts/${page.toString()}/comments');
      return (response.data as List)
          .map((userData) => ModelListApp.fromJson(userData))
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
