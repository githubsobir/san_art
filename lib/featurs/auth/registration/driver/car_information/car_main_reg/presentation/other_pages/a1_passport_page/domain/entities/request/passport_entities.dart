import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_entities.freezed.dart';

@freezed
abstract class PassportEntities with _$PassportEntities {
 factory PassportEntities({

   required bool boolGetData,
   required String message,
   required List<File> list,
   required String errorMessage,
  }) = _PassportEntities;
}
