import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/login/domain/entities/region/get_region_entities.dart';

part 'region_model.freezed.dart';
part 'region_model.g.dart';

@freezed
sealed class RegionModel with _$RegionModel {
  const factory RegionModel({
    required dynamic id,
    required String name,
    required String code,
    required String mask,
  }) = _RegionModel;

  factory RegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegionModelFromJson(json);

  const RegionModel._();

  RegionEntity toEntity() => RegionEntity(
        id: id,
        name: name,
        code: code,
        mask: mask,
      );
}
