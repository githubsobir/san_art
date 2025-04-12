import 'package:san_art/featurs/choose_language/domain/entities/languages.dart';

class ModelLanguage extends LanguageEntities {
  ModelLanguage({
    required super.id,
    required super.langName,
    required super.langId1,
    required super.langId2,
    required super.imageAssetLink,
    required super.boolLang,
    required super.note,
  });

  factory ModelLanguage.fromJson(Map<String, dynamic> json) {
    return ModelLanguage(
        id: json["id"],
        langName: json["langName"],
        langId1: json["langId1"],
        langId2: json["langId2"],
        imageAssetLink: json["imageAssetLink"],
        boolLang: json["boolLang"],
        note: json["note"]);
  }

  Map<String, dynamic> toJson() => {
        "langName": langName,
        "langId1": langId1,
        "langId2": langId2,
        "imageAssetLink": imageAssetLink,
        "boolLang": boolLang,
        "note": note
      };
}
