import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/domain/entities/search_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/search_page/domain/repository/search_repository.dart';

@injectable
class SearchUsecase {
  SearchRepository searchRepository;

  SearchUsecase(this.searchRepository);

  Future<Result<List<SearchEntities>, Failure>> call(int pageNum) async {
    return await searchRepository.getData(pageNum);
  }
}
