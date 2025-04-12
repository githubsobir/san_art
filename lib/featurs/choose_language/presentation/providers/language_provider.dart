import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:san_art/core/service/injection/injection_container.dart';
import 'package:san_art/featurs/choose_language/domain/entities/languages.dart';
import 'package:san_art/featurs/choose_language/domain/usecases/language_usecase.dart';

final languageProvider = StateProvider<String>((ref) => "uz");

@singleton
class ProviderFactory {
  final languageNotifierProvider =
      StateNotifierProvider<LanguageNotifier, List<LanguageEntities>>(
    (ref) => getIt<LanguageNotifier>(),
  );
}

@injectable
class LanguageNotifier extends StateNotifier<List<LanguageEntities>> {
  LanguageUsecase languageUsecase;

  LanguageNotifier(this.languageUsecase) : super([]) {
    _loadLanguage(languageUsecase);
  }

  _loadLanguage(LanguageUsecase languageUse) async {
    state = await languageUse.getData();
  }
}


// StateNotifierProvider sifatida language provider yarating:
final languageProvider2 = StateNotifierProvider<LanguageNotifier2, String>((ref) {
  return LanguageNotifier2();
});

class LanguageNotifier2 extends StateNotifier<String> {
  LanguageNotifier2() : super("en"); // Boshlang'ich til

  void setLanguage(String language) {
    state = language; // Bu barcha tinglayotgan widgetlarni yangilaydi
  }
}