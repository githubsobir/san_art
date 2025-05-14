import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/phone_registration/domain/entities/region/get_region_entities.dart';

part 'region_model.freezed.dart';
part 'region_model.g.dart';

@freezed
sealed class RegistrationPhoneRegionModel with _$RegistrationPhoneRegionModel {
  const factory RegistrationPhoneRegionModel({
    required dynamic id,
    required String name,
    required String code,
    required String mask,
  }) = _RegistrationPhoneRegionModel;

  factory RegistrationPhoneRegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationPhoneRegionModelFromJson(json);

  const RegistrationPhoneRegionModel._();

  RegistrationPhoneRegionEntity toEntity() => RegistrationPhoneRegionEntity(
        id: id,
        name: name,
        code: code,
        mask: mask,
      );
}
