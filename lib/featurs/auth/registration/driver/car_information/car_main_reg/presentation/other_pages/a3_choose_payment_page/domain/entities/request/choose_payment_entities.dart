import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_payment_entities.freezed.dart';

@freezed
abstract class PaymentMethod with _$PaymentMethod {
   factory PaymentMethod({
    required dynamic code,
    required dynamic name,
    required dynamic status,
  }) = _PaymentMethod;
}