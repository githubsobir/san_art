import 'package:freezed_annotation/freezed_annotation.dart';
part 'date_response_entities.freezed.dart';

@freezed
abstract class DateResponseEntities with _$DateResponseEntities {
  factory DateResponseEntities({
    required String dataResponse,
  }) = _DateResponseEntities;
}