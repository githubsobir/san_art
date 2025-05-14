// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegistrationPhoneRegionModel _$RegistrationPhoneRegionModelFromJson(
        Map<String, dynamic> json) =>
    _RegistrationPhoneRegionModel(
      id: json['id'],
      name: json['name'] as String,
      code: json['code'] as String,
      mask: json['mask'] as String,
    );

Map<String, dynamic> _$RegistrationPhoneRegionModelToJson(
        _RegistrationPhoneRegionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'mask': instance.mask,
    };
