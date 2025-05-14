// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginEntities {
  String get username;
  String get deviceName;

  /// Create a copy of LoginEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginEntitiesCopyWith<LoginEntities> get copyWith =>
      _$LoginEntitiesCopyWithImpl<LoginEntities>(
          this as LoginEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEntities &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, deviceName);

  @override
  String toString() {
    return 'LoginEntities(username: $username, deviceName: $deviceName)';
  }
}

/// @nodoc
abstract mixin class $LoginEntitiesCopyWith<$Res> {
  factory $LoginEntitiesCopyWith(
          LoginEntities value, $Res Function(LoginEntities) _then) =
      _$LoginEntitiesCopyWithImpl;
  @useResult
  $Res call({String username, String deviceName});
}

/// @nodoc
class _$LoginEntitiesCopyWithImpl<$Res>
    implements $LoginEntitiesCopyWith<$Res> {
  _$LoginEntitiesCopyWithImpl(this._self, this._then);

  final LoginEntities _self;
  final $Res Function(LoginEntities) _then;

  /// Create a copy of LoginEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? deviceName = null,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LoginEntities implements LoginEntities {
  _LoginEntities({required this.username, required this.deviceName});

  @override
  final String username;
  @override
  final String deviceName;

  /// Create a copy of LoginEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginEntitiesCopyWith<_LoginEntities> get copyWith =>
      __$LoginEntitiesCopyWithImpl<_LoginEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginEntities &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, deviceName);

  @override
  String toString() {
    return 'LoginEntities(username: $username, deviceName: $deviceName)';
  }
}

/// @nodoc
abstract mixin class _$LoginEntitiesCopyWith<$Res>
    implements $LoginEntitiesCopyWith<$Res> {
  factory _$LoginEntitiesCopyWith(
          _LoginEntities value, $Res Function(_LoginEntities) _then) =
      __$LoginEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({String username, String deviceName});
}

/// @nodoc
class __$LoginEntitiesCopyWithImpl<$Res>
    implements _$LoginEntitiesCopyWith<$Res> {
  __$LoginEntitiesCopyWithImpl(this._self, this._then);

  final _LoginEntities _self;
  final $Res Function(_LoginEntities) _then;

  /// Create a copy of LoginEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? deviceName = null,
  }) {
    return _then(_LoginEntities(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
