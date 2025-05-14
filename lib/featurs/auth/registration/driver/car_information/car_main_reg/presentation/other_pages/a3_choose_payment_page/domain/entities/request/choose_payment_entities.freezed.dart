// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_payment_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChoosePaymentEntities {
  bool get boolGetData;
  String get message;
  String get errorMessage;

  /// Create a copy of ChoosePaymentEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChoosePaymentEntitiesCopyWith<ChoosePaymentEntities> get copyWith =>
      _$ChoosePaymentEntitiesCopyWithImpl<ChoosePaymentEntities>(
          this as ChoosePaymentEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChoosePaymentEntities &&
            (identical(other.boolGetData, boolGetData) ||
                other.boolGetData == boolGetData) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, boolGetData, message, errorMessage);

  @override
  String toString() {
    return 'ChoosePaymentEntities(boolGetData: $boolGetData, message: $message, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $ChoosePaymentEntitiesCopyWith<$Res> {
  factory $ChoosePaymentEntitiesCopyWith(ChoosePaymentEntities value,
          $Res Function(ChoosePaymentEntities) _then) =
      _$ChoosePaymentEntitiesCopyWithImpl;
  @useResult
  $Res call({bool boolGetData, String message, String errorMessage});
}

/// @nodoc
class _$ChoosePaymentEntitiesCopyWithImpl<$Res>
    implements $ChoosePaymentEntitiesCopyWith<$Res> {
  _$ChoosePaymentEntitiesCopyWithImpl(this._self, this._then);

  final ChoosePaymentEntities _self;
  final $Res Function(ChoosePaymentEntities) _then;

  /// Create a copy of ChoosePaymentEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boolGetData = null,
    Object? message = null,
    Object? errorMessage = null,
  }) {
    return _then(_self.copyWith(
      boolGetData: null == boolGetData
          ? _self.boolGetData
          : boolGetData // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ChoosePaymentEntities implements ChoosePaymentEntities {
  const _ChoosePaymentEntities(
      {required this.boolGetData,
      required this.message,
      required this.errorMessage});

  @override
  final bool boolGetData;
  @override
  final String message;
  @override
  final String errorMessage;

  /// Create a copy of ChoosePaymentEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChoosePaymentEntitiesCopyWith<_ChoosePaymentEntities> get copyWith =>
      __$ChoosePaymentEntitiesCopyWithImpl<_ChoosePaymentEntities>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChoosePaymentEntities &&
            (identical(other.boolGetData, boolGetData) ||
                other.boolGetData == boolGetData) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, boolGetData, message, errorMessage);

  @override
  String toString() {
    return 'ChoosePaymentEntities(boolGetData: $boolGetData, message: $message, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$ChoosePaymentEntitiesCopyWith<$Res>
    implements $ChoosePaymentEntitiesCopyWith<$Res> {
  factory _$ChoosePaymentEntitiesCopyWith(_ChoosePaymentEntities value,
          $Res Function(_ChoosePaymentEntities) _then) =
      __$ChoosePaymentEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({bool boolGetData, String message, String errorMessage});
}

/// @nodoc
class __$ChoosePaymentEntitiesCopyWithImpl<$Res>
    implements _$ChoosePaymentEntitiesCopyWith<$Res> {
  __$ChoosePaymentEntitiesCopyWithImpl(this._self, this._then);

  final _ChoosePaymentEntities _self;
  final $Res Function(_ChoosePaymentEntities) _then;

  /// Create a copy of ChoosePaymentEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? boolGetData = null,
    Object? message = null,
    Object? errorMessage = null,
  }) {
    return _then(_ChoosePaymentEntities(
      boolGetData: null == boolGetData
          ? _self.boolGetData
          : boolGetData // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
