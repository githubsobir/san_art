import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/data/datasources/list_app/list_app.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/list_app/list_app_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/repository/list_app/list_app_repository.dart';

@Injectable(as: ListAppRepository)
class ListAppRepositoryImpl implements ListAppRepository {
  ListAppDataSource listAppDataSource;

  ListAppRepositoryImpl(this.listAppDataSource);

  @override
  Future<Result<List<ListAppEntities>, Failure>> getData(int pageNum) async {
    try {
      var data = await listAppDataSource.getData(page: pageNum);
      return Success(data.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
