import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_name_result.freezed.dart';
part 'full_name_result.g.dart';

@freezed
abstract class FullNameDriverResult with _$FullNameDriverResult {
  factory FullNameDriverResult({
    required String id,
    required String message,
  }) = _FullNameDriverResult;

  factory FullNameDriverResult.fromJson(Map<String, dynamic> json) =>
      _$FullNameDriverResultFromJson(json);
}
