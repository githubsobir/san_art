import 'package:freezed_annotation/freezed_annotation.dart';


part 'sms_page_entities.freezed.dart';
part 'sms_page_entities.g.dart';

@freezed
abstract class SmsPageEntities with _$SmsPageEntities {
  const factory SmsPageEntities({
    required dynamic token,
    required dynamic deviceId,
    required dynamic username
  }) = _SmsPageEntities;

  factory SmsPageEntities.fromJson(Map<String, dynamic> json) =>
      _$SmsPageEntitiesFromJson(json);
}