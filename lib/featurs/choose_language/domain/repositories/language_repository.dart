import 'package:san_art/featurs/choose_language/domain/entities/languages.dart';

abstract class LanguageRepository{
  Future<List<LanguageEntities>> getData();
}