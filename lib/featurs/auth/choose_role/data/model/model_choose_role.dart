import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/choose_role/domain/entities/user_role_entities.dart';

part 'model_choose_role.freezed.dart';
part 'model_choose_role.g.dart';

@freezed
abstract class ModelChooseRole with _$ModelChooseRole {
  const factory ModelChooseRole(
      {required int id,
      required String nameCategory,
      required String textCategory,
      required String imageAssetLink,
      required bool boolActive,
      required String note}) = _ModelChooseRole;

  factory ModelChooseRole.fromJson(Map<String, dynamic> json) =>
      _$ModelChooseRoleFromJson(json);

  const ModelChooseRole._();

  UserRoleEntities toEntity() => UserRoleEntities(
        id: id,
        boolActive: boolActive,
        imageAssetLink: imageAssetLink,
        nameCategory: nameCategory,
        note: note,
        textCategory: textCategory,
      );
}
