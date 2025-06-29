// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_choose_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelChooseRole {
  String get icon;
  String get name;
  bool get status;
  String get created_at;
  String get updated_at;

  /// Create a copy of ModelChooseRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelChooseRoleCopyWith<ModelChooseRole> get copyWith =>
      _$ModelChooseRoleCopyWithImpl<ModelChooseRole>(
          this as ModelChooseRole, _$identity);

  /// Serializes this ModelChooseRole to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelChooseRole &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, icon, name, status, created_at, updated_at);

  @override
  String toString() {
    return 'ModelChooseRole(icon: $icon, name: $name, status: $status, created_at: $created_at, updated_at: $updated_at)';
  }
}

/// @nodoc
abstract mixin class $ModelChooseRoleCopyWith<$Res> {
  factory $ModelChooseRoleCopyWith(
          ModelChooseRole value, $Res Function(ModelChooseRole) _then) =
      _$ModelChooseRoleCopyWithImpl;
  @useResult
  $Res call(
      {String icon,
      String name,
      bool status,
      String created_at,
      String updated_at});
}

/// @nodoc
class _$ModelChooseRoleCopyWithImpl<$Res>
    implements $ModelChooseRoleCopyWith<$Res> {
  _$ModelChooseRoleCopyWithImpl(this._self, this._then);

  final ModelChooseRole _self;
  final $Res Function(ModelChooseRole) _then;

  /// Create a copy of ModelChooseRole
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
@JsonSerializable()
class _ModelChooseRole extends ModelChooseRole {
  const _ModelChooseRole(
      {required this.icon,
      required this.name,
      required this.status,
      required this.created_at,
      required this.updated_at})
      : super._();
  factory _ModelChooseRole.fromJson(Map<String, dynamic> json) =>
      _$ModelChooseRoleFromJson(json);

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

  /// Create a copy of ModelChooseRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelChooseRoleCopyWith<_ModelChooseRole> get copyWith =>
      __$ModelChooseRoleCopyWithImpl<_ModelChooseRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelChooseRoleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelChooseRole &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, icon, name, status, created_at, updated_at);

  @override
  String toString() {
    return 'ModelChooseRole(icon: $icon, name: $name, status: $status, created_at: $created_at, updated_at: $updated_at)';
  }
}

/// @nodoc
abstract mixin class _$ModelChooseRoleCopyWith<$Res>
    implements $ModelChooseRoleCopyWith<$Res> {
  factory _$ModelChooseRoleCopyWith(
          _ModelChooseRole value, $Res Function(_ModelChooseRole) _then) =
      __$ModelChooseRoleCopyWithImpl;
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
class __$ModelChooseRoleCopyWithImpl<$Res>
    implements _$ModelChooseRoleCopyWith<$Res> {
  __$ModelChooseRoleCopyWithImpl(this._self, this._then);

  final _ModelChooseRole _self;
  final $Res Function(_ModelChooseRole) _then;

  /// Create a copy of ModelChooseRole
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
    return _then(_ModelChooseRole(
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
