import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/data/datasources/search_datasource.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/domain/entities/search_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/domain/repository/search_repository.dart';

@Injectable(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  SearchDataSource searchDataSource;

  SearchRepositoryImpl(this.searchDataSource);

  @override
  Future<Result<List<SearchEntities>, Failure>> getData(int pageNum) async {
    try {
      var data = await searchDataSource.getData(page: pageNum);
      return Success(data.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
