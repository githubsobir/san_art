import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/request/full_name_entities.dart';

part 'full_name_model.freezed.dart';
part 'full_name_model.g.dart';

@freezed
abstract class FullNameDriverModel with _$FullNameDriverModel {
  factory FullNameDriverModel({
    required String name,
    required String lName,
    required String sName,
  }) = _FullNameDriverModel;

  factory FullNameDriverModel.fromJson(Map<String, dynamic> json) =>
      _$FullNameDriverModelFromJson(json);

  FullNameDriverModel._();

  FullNameDriverEntities toEntity() =>
      FullNameDriverEntities(name: name, lName: lName, sName: sName);
}
