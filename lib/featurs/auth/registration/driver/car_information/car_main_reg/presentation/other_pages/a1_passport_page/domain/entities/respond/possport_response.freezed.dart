// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'possport_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassportResponseEntities {
  String get success;
  String get message;
  String get errorCode;

  /// Create a copy of PassportResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportResponseEntitiesCopyWith<PassportResponseEntities> get copyWith =>
      _$PassportResponseEntitiesCopyWithImpl<PassportResponseEntities>(
          this as PassportResponseEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassportResponseEntities &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, message, errorCode);

  @override
  String toString() {
    return 'PassportResponseEntities(success: $success, message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $PassportResponseEntitiesCopyWith<$Res> {
  factory $PassportResponseEntitiesCopyWith(PassportResponseEntities value,
          $Res Function(PassportResponseEntities) _then) =
      _$PassportResponseEntitiesCopyWithImpl;
  @useResult
  $Res call({String success, String message, String errorCode});
}

/// @nodoc
class _$PassportResponseEntitiesCopyWithImpl<$Res>
    implements $PassportResponseEntitiesCopyWith<$Res> {
  _$PassportResponseEntitiesCopyWithImpl(this._self, this._then);

  final PassportResponseEntities _self;
  final $Res Function(PassportResponseEntities) _then;

  /// Create a copy of PassportResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? errorCode = null,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PassportResponseEntities implements PassportResponseEntities {
  _PassportResponseEntities(
      {required this.success, required this.message, required this.errorCode});

  @override
  final String success;
  @override
  final String message;
  @override
  final String errorCode;

  /// Create a copy of PassportResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PassportResponseEntitiesCopyWith<_PassportResponseEntities> get copyWith =>
      __$PassportResponseEntitiesCopyWithImpl<_PassportResponseEntities>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PassportResponseEntities &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, message, errorCode);

  @override
  String toString() {
    return 'PassportResponseEntities(success: $success, message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class _$PassportResponseEntitiesCopyWith<$Res>
    implements $PassportResponseEntitiesCopyWith<$Res> {
  factory _$PassportResponseEntitiesCopyWith(_PassportResponseEntities value,
          $Res Function(_PassportResponseEntities) _then) =
      __$PassportResponseEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({String success, String message, String errorCode});
}

/// @nodoc
class __$PassportResponseEntitiesCopyWithImpl<$Res>
    implements _$PassportResponseEntitiesCopyWith<$Res> {
  __$PassportResponseEntitiesCopyWithImpl(this._self, this._then);

  final _PassportResponseEntities _self;
  final $Res Function(_PassportResponseEntities) _then;

  /// Create a copy of PassportResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? errorCode = null,
  }) {
    return _then(_PassportResponseEntities(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
