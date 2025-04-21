import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/full_name_entities.dart';

part 'full_name_model.freezed.dart';
part 'full_name_model.g.dart';

@freezed
abstract class FullNameModel with _$FullNameModel {
  factory FullNameModel({
    required String name,
    required String lName,
    required String sName,
  }) = _FullNameModel;

  factory FullNameModel.fromJson(Map<String, dynamic> json) =>
      _$FullNameModelFromJson(json);

  FullNameModel._();

  FullNameEntities toEntity() =>
      FullNameEntities(name: name, lName: lName, sName: sName);
}
