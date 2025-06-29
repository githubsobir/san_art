// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_choose_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModelChooseRole _$ModelChooseRoleFromJson(Map<String, dynamic> json) =>
    _ModelChooseRole(
      icon: json['icon'] as String,
      name: json['name'] as String,
      status: json['status'] as bool,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$ModelChooseRoleToJson(_ModelChooseRole instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
