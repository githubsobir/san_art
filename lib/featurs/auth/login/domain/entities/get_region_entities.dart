import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_region_entities.freezed.dart';

@freezed
sealed class RegionEntity with _$RegionEntity {

  const factory RegionEntity({
    required dynamic id,
    required String name,
    dynamic parent,
    required bool status,
  }) = _RegionEntity;
}