import 'package:freezed_annotation/freezed_annotation.dart';
part 'date_entities.freezed.dart';

@freezed
abstract class DateResponseEntities with _$DateResponseEntities {
   factory DateResponseEntities({
    required String date,
  }) = _DateResponseEntities;

}