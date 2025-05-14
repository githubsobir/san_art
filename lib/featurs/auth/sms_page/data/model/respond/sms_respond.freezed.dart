// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_respond.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SmsRespondModel {
  dynamic get token;
  dynamic get deviceId;
  dynamic get username;

  /// Create a copy of SmsRespondModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SmsRespondModelCopyWith<SmsRespondModel> get copyWith =>
      _$SmsRespondModelCopyWithImpl<SmsRespondModel>(
          this as SmsRespondModel, _$identity);

  /// Serializes this SmsRespondModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SmsRespondModel &&
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
    return 'SmsRespondModel(token: $token, deviceId: $deviceId, username: $username)';
  }
}

/// @nodoc
abstract mixin class $SmsRespondModelCopyWith<$Res> {
  factory $SmsRespondModelCopyWith(
          SmsRespondModel value, $Res Function(SmsRespondModel) _then) =
      _$SmsRespondModelCopyWithImpl;
  @useResult
  $Res call({dynamic token, dynamic deviceId, dynamic username});
}

/// @nodoc
class _$SmsRespondModelCopyWithImpl<$Res>
    implements $SmsRespondModelCopyWith<$Res> {
  _$SmsRespondModelCopyWithImpl(this._self, this._then);

  final SmsRespondModel _self;
  final $Res Function(SmsRespondModel) _then;

  /// Create a copy of SmsRespondModel
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
class _SmsRespondModel extends SmsRespondModel {
  _SmsRespondModel(
      {required this.token, required this.deviceId, required this.username})
      : super._();
  factory _SmsRespondModel.fromJson(Map<String, dynamic> json) =>
      _$SmsRespondModelFromJson(json);

  @override
  final dynamic token;
  @override
  final dynamic deviceId;
  @override
  final dynamic username;

  /// Create a copy of SmsRespondModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SmsRespondModelCopyWith<_SmsRespondModel> get copyWith =>
      __$SmsRespondModelCopyWithImpl<_SmsRespondModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SmsRespondModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SmsRespondModel &&
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
    return 'SmsRespondModel(token: $token, deviceId: $deviceId, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$SmsRespondModelCopyWith<$Res>
    implements $SmsRespondModelCopyWith<$Res> {
  factory _$SmsRespondModelCopyWith(
          _SmsRespondModel value, $Res Function(_SmsRespondModel) _then) =
      __$SmsRespondModelCopyWithImpl;
  @override
  @useResult
  $Res call({dynamic token, dynamic deviceId, dynamic username});
}

/// @nodoc
class __$SmsRespondModelCopyWithImpl<$Res>
    implements _$SmsRespondModelCopyWith<$Res> {
  __$SmsRespondModelCopyWithImpl(this._self, this._then);

  final _SmsRespondModel _self;
  final $Res Function(_SmsRespondModel) _then;

  /// Create a copy of SmsRespondModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = freezed,
    Object? deviceId = freezed,
    Object? username = freezed,
  }) {
    return _then(_SmsRespondModel(
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
