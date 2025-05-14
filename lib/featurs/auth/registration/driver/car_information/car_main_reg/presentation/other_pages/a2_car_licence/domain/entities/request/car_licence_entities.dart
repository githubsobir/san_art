import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_licence_entities.freezed.dart';

@freezed
abstract class CarLicenceEntities with _$CarLicenceEntities {

  factory CarLicenceEntities({
    required bool boolGetData,
    required String txtError}) = _CarLicenceEntities;

}