// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationResponseEntities {
  String get detail;

  /// Create a copy of RegistrationResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistrationResponseEntitiesCopyWith<RegistrationResponseEntities>
      get copyWith => _$RegistrationResponseEntitiesCopyWithImpl<
              RegistrationResponseEntities>(
          this as RegistrationResponseEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationResponseEntities &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @override
  String toString() {
    return 'RegistrationResponseEntities(detail: $detail)';
  }
}

/// @nodoc
abstract mixin class $RegistrationResponseEntitiesCopyWith<$Res> {
  factory $RegistrationResponseEntitiesCopyWith(
          RegistrationResponseEntities value,
          $Res Function(RegistrationResponseEntities) _then) =
      _$RegistrationResponseEntitiesCopyWithImpl;
  @useResult
  $Res call({String detail});
}

/// @nodoc
class _$RegistrationResponseEntitiesCopyWithImpl<$Res>
    implements $RegistrationResponseEntitiesCopyWith<$Res> {
  _$RegistrationResponseEntitiesCopyWithImpl(this._self, this._then);

  final RegistrationResponseEntities _self;
  final $Res Function(RegistrationResponseEntities) _then;

  /// Create a copy of RegistrationResponseEntities
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

class _RegistrationResponseEntities implements RegistrationResponseEntities {
  _RegistrationResponseEntities({required this.detail});

  @override
  final String detail;

  /// Create a copy of RegistrationResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegistrationResponseEntitiesCopyWith<_RegistrationResponseEntities>
      get copyWith => __$RegistrationResponseEntitiesCopyWithImpl<
          _RegistrationResponseEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegistrationResponseEntities &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @override
  String toString() {
    return 'RegistrationResponseEntities(detail: $detail)';
  }
}

/// @nodoc
abstract mixin class _$RegistrationResponseEntitiesCopyWith<$Res>
    implements $RegistrationResponseEntitiesCopyWith<$Res> {
  factory _$RegistrationResponseEntitiesCopyWith(
          _RegistrationResponseEntities value,
          $Res Function(_RegistrationResponseEntities) _then) =
      __$RegistrationResponseEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({String detail});
}

/// @nodoc
class __$RegistrationResponseEntitiesCopyWithImpl<$Res>
    implements _$RegistrationResponseEntitiesCopyWith<$Res> {
  __$RegistrationResponseEntitiesCopyWithImpl(this._self, this._then);

  final _RegistrationResponseEntities _self;
  final $Res Function(_RegistrationResponseEntities) _then;

  /// Create a copy of RegistrationResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? detail = null,
  }) {
    return _then(_RegistrationResponseEntities(
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
