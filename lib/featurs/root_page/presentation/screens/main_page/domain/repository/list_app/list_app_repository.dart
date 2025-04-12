import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/list_app/list_app_entities.dart';

abstract class ListAppRepository {
  Future<Result<List<ListAppEntities>, Failure>> getData(int pageNum);
}
