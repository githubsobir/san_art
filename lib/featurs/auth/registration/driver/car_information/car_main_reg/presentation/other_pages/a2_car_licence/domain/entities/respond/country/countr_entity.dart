import 'package:freezed_annotation/freezed_annotation.dart';

part 'countr_entity.freezed.dart';

@freezed
abstract class CountryEntity with _$CountryEntity {
  factory CountryEntity({required String code, required String name}) =
      _CountryEntity;
}
