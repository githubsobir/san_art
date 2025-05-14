// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseEntities {
  String get detail;

  /// Create a copy of LoginResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginResponseEntitiesCopyWith<LoginResponseEntities> get copyWith =>
      _$LoginResponseEntitiesCopyWithImpl<LoginResponseEntities>(
          this as LoginResponseEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginResponseEntities &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @override
  String toString() {
    return 'LoginResponseEntities(detail: $detail)';
  }
}

/// @nodoc
abstract mixin class $LoginResponseEntitiesCopyWith<$Res> {
  factory $LoginResponseEntitiesCopyWith(LoginResponseEntities value,
          $Res Function(LoginResponseEntities) _then) =
      _$LoginResponseEntitiesCopyWithImpl;
  @useResult
  $Res call({String detail});
}

/// @nodoc
class _$LoginResponseEntitiesCopyWithImpl<$Res>
    implements $LoginResponseEntitiesCopyWith<$Res> {
  _$LoginResponseEntitiesCopyWithImpl(this._self, this._then);

  final LoginResponseEntities _self;
  final $Res Function(LoginResponseEntities) _then;

  /// Create a copy of LoginResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_self.copyWith(
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LoginResponseEntities implements LoginResponseEntities {
  _LoginResponseEntities({required this.detail});

  @override
  final String detail;

  /// Create a copy of LoginResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginResponseEntitiesCopyWith<_LoginResponseEntities> get copyWith =>
      __$LoginResponseEntitiesCopyWithImpl<_LoginResponseEntities>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponseEntities &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @override
  String toString() {
    return 'LoginResponseEntities(detail: $detail)';
  }
}

/// @nodoc
abstract mixin class _$LoginResponseEntitiesCopyWith<$Res>
    implements $LoginResponseEntitiesCopyWith<$Res> {
  factory _$LoginResponseEntitiesCopyWith(_LoginResponseEntities value,
          $Res Function(_LoginResponseEntities) _then) =
      __$LoginResponseEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({String detail});
}

/// @nodoc
class __$LoginResponseEntitiesCopyWithImpl<$Res>
    implements _$LoginResponseEntitiesCopyWith<$Res> {
  __$LoginResponseEntitiesCopyWithImpl(this._self, this._then);

  final _LoginResponseEntities _self;
  final $Res Function(_LoginResponseEntities) _then;

  /// Create a copy of LoginResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? detail = null,
  }) {
    return _then(_LoginResponseEntities(
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
