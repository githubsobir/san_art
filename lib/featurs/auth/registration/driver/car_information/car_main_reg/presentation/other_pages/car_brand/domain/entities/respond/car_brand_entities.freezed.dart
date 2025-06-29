// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_brand_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarBrandEntities {
  int get id;
  String get name;

  /// Create a copy of CarBrandEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarBrandEntitiesCopyWith<CarBrandEntities> get copyWith =>
      _$CarBrandEntitiesCopyWithImpl<CarBrandEntities>(
          this as CarBrandEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarBrandEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'CarBrandEntities(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $CarBrandEntitiesCopyWith<$Res> {
  factory $CarBrandEntitiesCopyWith(
          CarBrandEntities value, $Res Function(CarBrandEntities) _then) =
      _$CarBrandEntitiesCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CarBrandEntitiesCopyWithImpl<$Res>
    implements $CarBrandEntitiesCopyWith<$Res> {
  _$CarBrandEntitiesCopyWithImpl(this._self, this._then);

  final CarBrandEntities _self;
  final $Res Function(CarBrandEntities) _then;

  /// Create a copy of CarBrandEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CarBrandEntities implements CarBrandEntities {
  const _CarBrandEntities({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of CarBrandEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarBrandEntitiesCopyWith<_CarBrandEntities> get copyWith =>
      __$CarBrandEntitiesCopyWithImpl<_CarBrandEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarBrandEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'CarBrandEntities(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CarBrandEntitiesCopyWith<$Res>
    implements $CarBrandEntitiesCopyWith<$Res> {
  factory _$CarBrandEntitiesCopyWith(
          _CarBrandEntities value, $Res Function(_CarBrandEntities) _then) =
      __$CarBrandEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$CarBrandEntitiesCopyWithImpl<$Res>
    implements _$CarBrandEntitiesCopyWith<$Res> {
  __$CarBrandEntitiesCopyWithImpl(this._self, this._then);

  final _CarBrandEntities _self;
  final $Res Function(_CarBrandEntities) _then;

  /// Create a copy of CarBrandEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_CarBrandEntities(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
