import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_name_entities.freezed.dart';
part 'full_name_entities.g.dart';

@freezed
abstract class FullNameEntities with _$FullNameEntities {
  const factory FullNameEntities({
    required String name,
    required String lName,
    required String sName,
  }) = _FullNameEntities;

  factory FullNameEntities.fromJson(Map<String, dynamic> json) =>
      _$FullNameEntitiesFromJson(json);
}
