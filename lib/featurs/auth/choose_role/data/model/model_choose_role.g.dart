// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_choose_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModelChooseRole _$ModelChooseRoleFromJson(Map<String, dynamic> json) =>
    _ModelChooseRole(
      id: (json['id'] as num).toInt(),
      valueCategory: json['valueCategory'] as String,
      textCategory: json['textCategory'] as String,
      imageAssetLink: json['imageAssetLink'] as String,
      boolActive: json['boolActive'] as bool,
      note: json['note'] as String,
    );

Map<String, dynamic> _$ModelChooseRoleToJson(_ModelChooseRole instance) =>
    <String, dynamic>{
      'id': instance.id,
      'valueCategory': instance.valueCategory,
      'textCategory': instance.textCategory,
      'imageAssetLink': instance.imageAssetLink,
      'boolActive': instance.boolActive,
      'note': instance.note,
    };
