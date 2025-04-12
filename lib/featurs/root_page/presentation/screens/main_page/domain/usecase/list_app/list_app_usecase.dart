import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:san_art/core/errors/fails.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/entities/list_app/list_app_entities.dart';
import 'package:san_art/featurs/root_page/presentation/screens/main_page/domain/repository/list_app/list_app_repository.dart';

@injectable
class ListAppUsecase {
  ListAppRepository listAppRepository;

  ListAppUsecase(this.listAppRepository);

  List<ListAppEntities> listAppEntities = [];

  Future<Result<List<ListAppEntities>, Failure>> call(int page) async {
    try {
      var data = await listAppRepository.getData(page);
      if (page == 1) {
        listAppEntities.clear();
        listAppEntities = (data.tryGetSuccess())!;
      } else {
        listAppEntities.addAll(data.tryGetSuccess()!);
      }
      return Success(listAppEntities);
    } catch (e) {
      return Error(Failure.unexpected(e.toString()));
    }
  }
}
