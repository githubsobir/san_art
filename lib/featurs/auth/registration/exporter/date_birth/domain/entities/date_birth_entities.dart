import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_birth_entities.freezed.dart';

@freezed
abstract class DateBirthEntities with _$DateBirthEntities {
  factory DateBirthEntities({
    required bool success1,
    required String message1,
    required String errorMessage1,
  }) = _DateBirthEntities;
}
