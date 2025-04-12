import 'package:san_art/featurs/choose_language/data/datasources/language_datasource.dart';
import 'package:san_art/featurs/choose_language/domain/entities/languages.dart';
import 'package:san_art/featurs/choose_language/domain/repositories/language_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LanguageUsecase implements LanguageRepository {
  LanguageDataSource languageDataSource;

  LanguageUsecase(this.languageDataSource);

  @override
  Future<List<LanguageEntities>> getData() async {
    return languageDataSource.listLanguages();
  }
}
