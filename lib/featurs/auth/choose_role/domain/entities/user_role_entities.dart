import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_role_entities.freezed.dart';

@freezed
abstract class UserRoleEntities with _$UserRoleEntities {
  factory UserRoleEntities( {
   required String icon,
   required String name,
   required bool status,
   required String created_at,
   required String updated_at,
  }) = _UserRoleEntities;

}


