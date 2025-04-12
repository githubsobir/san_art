// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_region_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegionEntity {
  dynamic get id;
  String get name;
  dynamic get parent;
  bool get status;

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegionEntityCopyWith<RegionEntity> get copyWith =>
      _$RegionEntityCopyWithImpl<RegionEntity>(
          this as RegionEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegionEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.parent, parent) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      name,
      const DeepCollectionEquality().hash(parent),
      status);

  @override
  String toString() {
    return 'RegionEntity(id: $id, name: $name, parent: $parent, status: $status)';
  }
}

/// @nodoc
abstract mixin class $RegionEntityCopyWith<$Res> {
  factory $RegionEntityCopyWith(
          RegionEntity value, $Res Function(RegionEntity) _then) =
      _$RegionEntityCopyWithImpl;
  @useResult
  $Res call({dynamic id, String name, dynamic parent, bool status});
}

/// @nodoc
class _$RegionEntityCopyWithImpl<$Res> implements $RegionEntityCopyWith<$Res> {
  _$RegionEntityCopyWithImpl(this._self, this._then);

  final RegionEntity _self;
  final $Res Function(RegionEntity) _then;

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? parent = freezed,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _RegionEntity implements RegionEntity {
  const _RegionEntity(
      {required this.id,
      required this.name,
      this.parent,
      required this.status});

  @override
  final dynamic id;
  @override
  final String name;
  @override
  final dynamic parent;
  @override
  final bool status;

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegionEntityCopyWith<_RegionEntity> get copyWith =>
      __$RegionEntityCopyWithImpl<_RegionEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegionEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.parent, parent) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      name,
      const DeepCollectionEquality().hash(parent),
      status);

  @override
  String toString() {
    return 'RegionEntity(id: $id, name: $name, parent: $parent, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$RegionEntityCopyWith<$Res>
    implements $RegionEntityCopyWith<$Res> {
  factory _$RegionEntityCopyWith(
          _RegionEntity value, $Res Function(_RegionEntity) _then) =
      __$RegionEntityCopyWithImpl;
  @override
  @useResult
  $Res call({dynamic id, String name, dynamic parent, bool status});
}

/// @nodoc
class __$RegionEntityCopyWithImpl<$Res>
    implements _$RegionEntityCopyWith<$Res> {
  __$RegionEntityCopyWithImpl(this._self, this._then);

  final _RegionEntity _self;
  final $Res Function(_RegionEntity) _then;

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? parent = freezed,
    Object? status = null,
  }) {
    return _then(_RegionEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
