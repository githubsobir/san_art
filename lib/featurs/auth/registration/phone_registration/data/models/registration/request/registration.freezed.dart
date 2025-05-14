// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationModel {
  String get username;
  String get device_name;

  /// Create a copy of RegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistrationModelCopyWith<RegistrationModel> get copyWith =>
      _$RegistrationModelCopyWithImpl<RegistrationModel>(
          this as RegistrationModel, _$identity);

  /// Serializes this RegistrationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationModel &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.device_name, device_name) ||
                other.device_name == device_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, device_name);

  @override
  String toString() {
    return 'RegistrationModel(username: $username, device_name: $device_name)';
  }
}

/// @nodoc
abstract mixin class $RegistrationModelCopyWith<$Res> {
  factory $RegistrationModelCopyWith(
          RegistrationModel value, $Res Function(RegistrationModel) _then) =
      _$RegistrationModelCopyWithImpl;
  @useResult
  $Res call({String username, String device_name});
}

/// @nodoc
class _$RegistrationModelCopyWithImpl<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  _$RegistrationModelCopyWithImpl(this._self, this._then);

  final RegistrationModel _self;
  final $Res Function(RegistrationModel) _then;

  /// Create a copy of RegistrationModel
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
@JsonSerializable()
class _RegistrationModel extends RegistrationModel {
  _RegistrationModel({required this.username, required this.device_name})
      : super._();
  factory _RegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationModelFromJson(json);

  @override
  final String username;
  @override
  final String device_name;

  /// Create a copy of RegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegistrationModelCopyWith<_RegistrationModel> get copyWith =>
      __$RegistrationModelCopyWithImpl<_RegistrationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegistrationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegistrationModel &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.device_name, device_name) ||
                other.device_name == device_name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, device_name);

  @override
  String toString() {
    return 'RegistrationModel(username: $username, device_name: $device_name)';
  }
}

/// @nodoc
abstract mixin class _$RegistrationModelCopyWith<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  factory _$RegistrationModelCopyWith(
          _RegistrationModel value, $Res Function(_RegistrationModel) _then) =
      __$RegistrationModelCopyWithImpl;
  @override
  @useResult
  $Res call({String username, String device_name});
}

/// @nodoc
class __$RegistrationModelCopyWithImpl<$Res>
    implements _$RegistrationModelCopyWith<$Res> {
  __$RegistrationModelCopyWithImpl(this._self, this._then);

  final _RegistrationModel _self;
  final $Res Function(_RegistrationModel) _then;

  /// Create a copy of RegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? device_name = null,
  }) {
    return _then(_RegistrationModel(
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
