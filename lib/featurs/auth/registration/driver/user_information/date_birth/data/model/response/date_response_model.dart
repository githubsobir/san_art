import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/date_birth/domain/entities/request/date_entities.dart';

part 'date_response_model.freezed.dart';
part 'date_response_model.g.dart';

@freezed
abstract class DateResponseModel with _$DateResponseModel {
  factory DateResponseModel({
    required String dataResponse,
  }) = _DateResponseModel;

  DateResponseModel._();

  factory DateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DateResponseModelFromJson(json);

  DateResponseEntities toEntity() => DateResponseEntities(
        date: dataResponse,
      );
}
