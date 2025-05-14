import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_payment_entities.freezed.dart';

@freezed
abstract class ChoosePaymentEntities with _$ChoosePaymentEntities {
  const factory ChoosePaymentEntities({
  required  bool boolGetData,
  required  String message,
  required  String errorMessage,
  }) = _ChoosePaymentEntities;


}