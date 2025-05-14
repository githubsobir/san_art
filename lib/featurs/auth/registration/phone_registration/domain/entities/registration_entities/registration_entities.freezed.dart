// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationRequestEntities {
  String get username;
  String get device_name;

  /// Create a copy of RegistrationRequestEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistrationRequestEntitiesCopyWith<RegistrationRequestEntities>
      get copyWith => _$RegistrationRequestEntitiesCopyWithImpl<
              RegistrationRequestEntities>(
          this as RegistrationRequestEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationRequestEntities &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.device_name, device_name) ||
                other.device_name == device_name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, device_name);

  @override
  String toString() {
    return 'RegistrationRequestEntities(username: $username, device_name: $device_name)';
  }
}

/// @nodoc
abstract mixin class $RegistrationRequestEntitiesCopyWith<$Res> {
  factory $RegistrationRequestEntitiesCopyWith(
          RegistrationRequestEntities value,
          $Res Function(RegistrationRequestEntities) _then) =
      _$RegistrationRequestEntitiesCopyWithImpl;
  @useResult
  $Res call({String username, String device_name});
}

/// @nodoc
class _$RegistrationRequestEntitiesCopyWithImpl<$Res>
    implements $RegistrationRequestEntitiesCopyWith<$Res> {
  _$RegistrationRequestEntitiesCopyWithImpl(this._self, this._then);

  final RegistrationRequestEntities _self;
  final $Res Function(RegistrationRequestEntities) _then;

  /// Create a copy of RegistrationRequestEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? device_name = null,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      device_name: null == device_name
          ? _self.device_name
          : device_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _RegistrationRequestEntities implements RegistrationRequestEntities {
  _RegistrationRequestEntities(
      {required this.username, required this.device_name});

  @override
  final String username;
  @override
  final String device_name;

  /// Create a copy of RegistrationRequestEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegistrationRequestEntitiesCopyWith<_RegistrationRequestEntities>
      get copyWith => __$RegistrationRequestEntitiesCopyWithImpl<
          _RegistrationRequestEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegistrationRequestEntities &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.device_name, device_name) ||
                other.device_name == device_name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, device_name);

  @override
  String toString() {
    return 'RegistrationRequestEntities(username: $username, device_name: $device_name)';
  }
}

/// @nodoc
abstract mixin class _$RegistrationRequestEntitiesCopyWith<$Res>
    implements $RegistrationRequestEntitiesCopyWith<$Res> {
  factory _$RegistrationRequestEntitiesCopyWith(
          _RegistrationRequestEntities value,
          $Res Function(_RegistrationRequestEntities) _then) =
      __$RegistrationRequestEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({String username, String device_name});
}

/// @nodoc
class __$RegistrationRequestEntitiesCopyWithImpl<$Res>
    implements _$RegistrationRequestEntitiesCopyWith<$Res> {
  __$RegistrationRequestEntitiesCopyWithImpl(this._self, this._then);

  final _RegistrationRequestEntities _self;
  final $Res Function(_RegistrationRequestEntities) _then;

  /// Create a copy of RegistrationRequestEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? device_name = null,
  }) {
    return _then(_RegistrationRequestEntities(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      device_name: null == device_name
          ? _self.device_name
          : device_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
