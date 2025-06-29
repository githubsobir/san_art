// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_role_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRoleEntities {
  String get icon;
  String get name;
  bool get status;
  String get created_at;
  String get updated_at;

  /// Create a copy of UserRoleEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserRoleEntitiesCopyWith<UserRoleEntities> get copyWith =>
      _$UserRoleEntitiesCopyWithImpl<UserRoleEntities>(
          this as UserRoleEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRoleEntities &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, icon, name, status, created_at, updated_at);

  @override
  String toString() {
    return 'UserRoleEntities(icon: $icon, name: $name, status: $status, created_at: $created_at, updated_at: $updated_at)';
  }
}

/// @nodoc
abstract mixin class $UserRoleEntitiesCopyWith<$Res> {
  factory $UserRoleEntitiesCopyWith(
          UserRoleEntities value, $Res Function(UserRoleEntities) _then) =
      _$UserRoleEntitiesCopyWithImpl;
  @useResult
  $Res call(
      {String icon,
      String name,
      bool status,
      String created_at,
      String updated_at});
}

/// @nodoc
class _$UserRoleEntitiesCopyWithImpl<$Res>
    implements $UserRoleEntitiesCopyWith<$Res> {
  _$UserRoleEntitiesCopyWithImpl(this._self, this._then);

  final UserRoleEntities _self;
  final $Res Function(UserRoleEntities) _then;

  /// Create a copy of UserRoleEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
    Object? status = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_self.copyWith(
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _self.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _UserRoleEntities implements UserRoleEntities {
  _UserRoleEntities(
      {required this.icon,
      required this.name,
      required this.status,
      required this.created_at,
      required this.updated_at});

  @override
  final String icon;
  @override
  final String name;
  @override
  final bool status;
  @override
  final String created_at;
  @override
  final String updated_at;

  /// Create a copy of UserRoleEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserRoleEntitiesCopyWith<_UserRoleEntities> get copyWith =>
      __$UserRoleEntitiesCopyWithImpl<_UserRoleEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRoleEntities &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, icon, name, status, created_at, updated_at);

  @override
  String toString() {
    return 'UserRoleEntities(icon: $icon, name: $name, status: $status, created_at: $created_at, updated_at: $updated_at)';
  }
}

/// @nodoc
abstract mixin class _$UserRoleEntitiesCopyWith<$Res>
    implements $UserRoleEntitiesCopyWith<$Res> {
  factory _$UserRoleEntitiesCopyWith(
          _UserRoleEntities value, $Res Function(_UserRoleEntities) _then) =
      __$UserRoleEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String icon,
      String name,
      bool status,
      String created_at,
      String updated_at});
}

/// @nodoc
class __$UserRoleEntitiesCopyWithImpl<$Res>
    implements _$UserRoleEntitiesCopyWith<$Res> {
  __$UserRoleEntitiesCopyWithImpl(this._self, this._then);

  final _UserRoleEntities _self;
  final $Res Function(_UserRoleEntities) _then;

  /// Create a copy of UserRoleEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? icon = null,
    Object? name = null,
    Object? status = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_UserRoleEntities(
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _self.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
