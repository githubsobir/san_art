import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/choose_role/domain/entities/user_role_entities.dart';

part 'model_choose_role.freezed.dart';
part 'model_choose_role.g.dart';

@freezed
abstract class ModelChooseRole with _$ModelChooseRole {
  const factory ModelChooseRole(
      {   required String icon,
        required String name,
        required bool status,
        required String created_at,
        required String updated_at,}) = _ModelChooseRole;



  factory ModelChooseRole.fromJson(Map<String, dynamic> json) =>
      _$ModelChooseRoleFromJson(json);

  const ModelChooseRole._();

  UserRoleEntities toEntity() => UserRoleEntities(
    icon:icon,
    name:name,
    status:status,
    created_at:created_at,
    updated_at:updated_at,
      );
}
