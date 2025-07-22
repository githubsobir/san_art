import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';


part 'passport_entities.freezed.dart';
// Passport state'i uchun yangi freezed class
@freezed
abstract class PassportStateEntities with _$PassportStateEntities {
  const factory PassportStateEntities({
    required int id,
    required String type,
    required List<String> images,
  }) = _PassportStateEntities;
}

