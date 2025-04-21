import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_name_result.freezed.dart';
part 'full_name_result.g.dart';

@freezed
abstract class FullNameResult with _$FullNameResult {
  factory FullNameResult({
    required String id,
    required String message,
  }) = _FullNameResult;

  factory FullNameResult.fromJson(Map<String, dynamic> json) =>
      _$FullNameResultFromJson(json);
}
