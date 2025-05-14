import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_region_entities.freezed.dart';

@freezed
sealed class RegistrationPhoneRegionEntity with _$RegistrationPhoneRegionEntity {

  const factory RegistrationPhoneRegionEntity({
    required dynamic id,
    required String name,
    required String code,
    required String mask,
  }) = _RegistrationPhoneRegionEntity;
}