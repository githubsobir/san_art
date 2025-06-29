// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_weigth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CarWeightModel _$CarWeightModelFromJson(Map<String, dynamic> json) =>
    _CarWeightModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      weightMax: json['weight_max'],
      weightMin: json['weight_min'],
      status: json['status'],
    );

Map<String, dynamic> _$CarWeightModelToJson(_CarWeightModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'weight_max': instance.weightMax,
      'weight_min': instance.weightMin,
      'status': instance.status,
    };
