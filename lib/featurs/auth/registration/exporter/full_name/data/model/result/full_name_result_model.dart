import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:san_art/featurs/auth/registration/exporter/full_name/domain/entities/result/full_name_result.dart';

part 'full_name_result_model.freezed.dart';
part 'full_name_result_model.g.dart';

@freezed
abstract class FullNameResultModel with _$FullNameResultModel {
  factory FullNameResultModel({
    required String id,
    required String message,
  }) = _FullNameResultModel;

  factory FullNameResultModel.fromJson(Map<String, dynamic> json) =>
      _$FullNameResultModelFromJson(json);

  FullNameResultModel._();

  FullNameResult toEntity() => FullNameResult(id: id, message: message);
}
