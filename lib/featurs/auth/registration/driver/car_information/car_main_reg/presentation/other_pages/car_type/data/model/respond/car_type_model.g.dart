// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarTypeModel _$CarTypeModelFromJson(Map<String, dynamic> json) =>
    _CarTypeModel(
      id: (json['id'] as num).toInt(),
      name: json['name'],
      description: json['description'],
      weightType: json['weight_type'],
      image: json['image'],
      status: json['status'] as bool,
    );

Map<String, dynamic> _$CarTypeModelToJson(_CarTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'weight_type': instance.weightType,
      'image': instance.image,
      'status': instance.status,
    };
