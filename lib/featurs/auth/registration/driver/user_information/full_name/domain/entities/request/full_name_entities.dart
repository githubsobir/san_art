import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_name_entities.freezed.dart';
part 'full_name_entities.g.dart';

@freezed
abstract class FullNameDriverEntities with _$FullNameDriverEntities {
  const factory FullNameDriverEntities({
    required String name,
    required String lName,
    required String sName,
  }) = _FullNameDriverEntities;

  factory FullNameDriverEntities.fromJson(Map<String, dynamic> json) =>
      _$FullNameDriverEntitiesFromJson(json);
}
