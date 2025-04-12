import 'package:injectable/injectable.dart';
import 'package:san_art/featurs/choose_language/domain/entities/languages.dart';

@injectable
class LanguageDataSource {
   List<LanguageEntities> listLanguages() {
    List<LanguageEntities> listLanguage = [
      LanguageEntities(
          id: 1,
          langName: "O'zbek tili",
          langId1: "uz",
          langId2: "UZ",
          imageAssetLink: "assets/images/uzb.png",
          boolLang: true,
          note: "note"),
      LanguageEntities(
          id: 2,
          langName: "Kazak dili",
          langId1: "kk",
          langId2: "KK",
          imageAssetLink: "assets/images/kz.png",
          boolLang: false,
          note: "note"),
      LanguageEntities(
          id: 3,
          langName: "Türk Dili",
          langId1: "tr",
          langId2: "TR",
          imageAssetLink: "assets/images/tr.png",
          boolLang: false,
          note: "note"),
      LanguageEntities(
          id: 4,
          langName: "Забони точикй",
          langId1: "tg",
          langId2: "TJ",
          imageAssetLink: "assets/images/tj.png",
          boolLang: false,
          note: "note"),
      LanguageEntities(
          id: 5,
          langName: "Русский язык",
          langId1: "ru",
          langId2: "RU",
          imageAssetLink: "assets/images/rus.png",
          boolLang: false,
          note: "note"),
      LanguageEntities(
          id: 6,
          langName: "English language",
          langId1: "en",
          langId2: "EN",
          imageAssetLink: "assets/images/uk.png",
          boolLang: false,
          note: "note"),
    ];

    return listLanguage;
  }
}
