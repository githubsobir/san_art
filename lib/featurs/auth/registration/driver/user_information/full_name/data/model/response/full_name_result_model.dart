import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/driver/user_information/full_name/domain/entities/response/full_name_result.dart';

part 'full_name_result_model.freezed.dart';
part 'full_name_result_model.g.dart';

@freezed
abstract class FullNameDriverResultModel with _$FullNameDriverResultModel {
  factory FullNameDriverResultModel({
    required String id,
    required String message,
  }) = _FullNameDriverResultModel;

  factory FullNameDriverResultModel.fromJson(Map<String, dynamic> json) =>
      _$FullNameDriverResultModelFromJson(json);

  FullNameDriverResultModel._();

  FullNameDriverResult toEntity() => FullNameDriverResult(id: id, message: message);
}
