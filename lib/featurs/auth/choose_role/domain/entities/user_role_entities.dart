import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_role_entities.freezed.dart';

@freezed
abstract class UserRoleEntities with _$UserRoleEntities {
  factory UserRoleEntities( {
   required int id,
   required String nameCategory,
   required String textCategory,
   required String imageAssetLink,
   required bool boolActive,
   required String note,
  }) = _UserRoleEntities;

}
