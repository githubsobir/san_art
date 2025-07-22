import 'package:freezed_annotation/freezed_annotation.dart';

part 'possport_response.freezed.dart';

@freezed
abstract class PassportResponseEntities with _$PassportResponseEntities {
  factory PassportResponseEntities({
    required String success,
    required String message,
    required String errorCode,
  }) = _PassportResponseEntities;
}
