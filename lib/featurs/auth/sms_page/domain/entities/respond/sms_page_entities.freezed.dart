// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_page_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SmsPageEntities {
  dynamic get token;
  dynamic get deviceId;
  dynamic get username;

  /// Create a copy of SmsPageEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SmsPageEntitiesCopyWith<SmsPageEntities> get copyWith =>
      _$SmsPageEntitiesCopyWithImpl<SmsPageEntities>(
          this as SmsPageEntities, _$identity);

  /// Serializes this SmsPageEntities to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SmsPageEntities &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.deviceId, deviceId) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(deviceId),
      const DeepCollectionEquality().hash(username));

  @override
  String toString() {
    return 'SmsPageEntities(token: $token, deviceId: $deviceId, username: $username)';
  }
}

/// @nodoc
abstract mixin class $SmsPageEntitiesCopyWith<$Res> {
  factory $SmsPageEntitiesCopyWith(
          SmsPageEntities value, $Res Function(SmsPageEntities) _then) =
      _$SmsPageEntitiesCopyWithImpl;
  @useResult
  $Res call({dynamic token, dynamic deviceId, dynamic username});
}

/// @nodoc
class _$SmsPageEntitiesCopyWithImpl<$Res>
    implements $SmsPageEntitiesCopyWith<$Res> {
  _$SmsPageEntitiesCopyWithImpl(this._self, this._then);

  final SmsPageEntities _self;
  final $Res Function(SmsPageEntities) _then;

  /// Create a copy of SmsPageEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? deviceId = freezed,
    Object? username = freezed,
  }) {
    return _then(_self.copyWith(
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SmsPageEntities implements SmsPageEntities {
  const _SmsPageEntities(
      {required this.token, required this.deviceId, required this.username});
  factory _SmsPageEntities.fromJson(Map<String, dynamic> json) =>
      _$SmsPageEntitiesFromJson(json);

  @override
  final dynamic token;
  @override
  final dynamic deviceId;
  @override
  final dynamic username;

  /// Create a copy of SmsPageEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SmsPageEntitiesCopyWith<_SmsPageEntities> get copyWith =>
      __$SmsPageEntitiesCopyWithImpl<_SmsPageEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SmsPageEntitiesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SmsPageEntities &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.deviceId, deviceId) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(deviceId),
      const DeepCollectionEquality().hash(username));

  @override
  String toString() {
    return 'SmsPageEntities(token: $token, deviceId: $deviceId, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$SmsPageEntitiesCopyWith<$Res>
    implements $SmsPageEntitiesCopyWith<$Res> {
  factory _$SmsPageEntitiesCopyWith(
          _SmsPageEntities value, $Res Function(_SmsPageEntities) _then) =
      __$SmsPageEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({dynamic token, dynamic deviceId, dynamic username});
}

/// @nodoc
class __$SmsPageEntitiesCopyWithImpl<$Res>
    implements _$SmsPageEntitiesCopyWith<$Res> {
  __$SmsPageEntitiesCopyWithImpl(this._self, this._then);

  final _SmsPageEntities _self;
  final $Res Function(_SmsPageEntities) _then;

  /// Create a copy of SmsPageEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = freezed,
    Object? deviceId = freezed,
    Object? username = freezed,
  }) {
    return _then(_SmsPageEntities(
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
