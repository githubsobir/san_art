// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_page_req_entites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginSmsRequestEntities {
  String get username;
  String get deviceName;
  String get code;

  /// Create a copy of LoginSmsRequestEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginSmsRequestEntitiesCopyWith<LoginSmsRequestEntities> get copyWith =>
      _$LoginSmsRequestEntitiesCopyWithImpl<LoginSmsRequestEntities>(
          this as LoginSmsRequestEntities, _$identity);

  /// Serializes this LoginSmsRequestEntities to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginSmsRequestEntities &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, deviceName, code);

  @override
  String toString() {
    return 'LoginSmsRequestEntities(username: $username, deviceName: $deviceName, code: $code)';
  }
}

/// @nodoc
abstract mixin class $LoginSmsRequestEntitiesCopyWith<$Res> {
  factory $LoginSmsRequestEntitiesCopyWith(LoginSmsRequestEntities value,
          $Res Function(LoginSmsRequestEntities) _then) =
      _$LoginSmsRequestEntitiesCopyWithImpl;
  @useResult
  $Res call({String username, String deviceName, String code});
}

/// @nodoc
class _$LoginSmsRequestEntitiesCopyWithImpl<$Res>
    implements $LoginSmsRequestEntitiesCopyWith<$Res> {
  _$LoginSmsRequestEntitiesCopyWithImpl(this._self, this._then);

  final LoginSmsRequestEntities _self;
  final $Res Function(LoginSmsRequestEntities) _then;

  /// Create a copy of LoginSmsRequestEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? deviceName = null,
    Object? code = null,
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
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LoginSmsRequestEntities implements LoginSmsRequestEntities {
  _LoginSmsRequestEntities(
      {required this.username, required this.deviceName, required this.code});
  factory _LoginSmsRequestEntities.fromJson(Map<String, dynamic> json) =>
      _$LoginSmsRequestEntitiesFromJson(json);

  @override
  final String username;
  @override
  final String deviceName;
  @override
  final String code;

  /// Create a copy of LoginSmsRequestEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginSmsRequestEntitiesCopyWith<_LoginSmsRequestEntities> get copyWith =>
      __$LoginSmsRequestEntitiesCopyWithImpl<_LoginSmsRequestEntities>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginSmsRequestEntitiesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginSmsRequestEntities &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, deviceName, code);

  @override
  String toString() {
    return 'LoginSmsRequestEntities(username: $username, deviceName: $deviceName, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$LoginSmsRequestEntitiesCopyWith<$Res>
    implements $LoginSmsRequestEntitiesCopyWith<$Res> {
  factory _$LoginSmsRequestEntitiesCopyWith(_LoginSmsRequestEntities value,
          $Res Function(_LoginSmsRequestEntities) _then) =
      __$LoginSmsRequestEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({String username, String deviceName, String code});
}

/// @nodoc
class __$LoginSmsRequestEntitiesCopyWithImpl<$Res>
    implements _$LoginSmsRequestEntitiesCopyWith<$Res> {
  __$LoginSmsRequestEntitiesCopyWithImpl(this._self, this._then);

  final _LoginSmsRequestEntities _self;
  final $Res Function(_LoginSmsRequestEntities) _then;

  /// Create a copy of LoginSmsRequestEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? deviceName = null,
    Object? code = null,
  }) {
    return _then(_LoginSmsRequestEntities(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _self.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
