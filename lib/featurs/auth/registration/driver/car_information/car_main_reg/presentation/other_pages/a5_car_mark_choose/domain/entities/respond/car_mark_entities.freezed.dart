// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_mark_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarMarkEntities {
  dynamic get id;
  dynamic get name;
  dynamic get brand;
  dynamic get type;

  /// Create a copy of CarMarkEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarMarkEntitiesCopyWith<CarMarkEntities> get copyWith =>
      _$CarMarkEntitiesCopyWithImpl<CarMarkEntities>(
          this as CarMarkEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarMarkEntities &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(type));

  @override
  String toString() {
    return 'CarMarkEntities(id: $id, name: $name, brand: $brand, type: $type)';
  }
}

/// @nodoc
abstract mixin class $CarMarkEntitiesCopyWith<$Res> {
  factory $CarMarkEntitiesCopyWith(
          CarMarkEntities value, $Res Function(CarMarkEntities) _then) =
      _$CarMarkEntitiesCopyWithImpl;
  @useResult
  $Res call({dynamic id, dynamic name, dynamic brand, dynamic type});
}

/// @nodoc
class _$CarMarkEntitiesCopyWithImpl<$Res>
    implements $CarMarkEntitiesCopyWith<$Res> {
  _$CarMarkEntitiesCopyWithImpl(this._self, this._then);

  final CarMarkEntities _self;
  final $Res Function(CarMarkEntities) _then;

  /// Create a copy of CarMarkEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? type = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _CarMarkEntities implements CarMarkEntities {
  _CarMarkEntities(
      {required this.id,
      required this.name,
      required this.brand,
      required this.type});

  @override
  final dynamic id;
  @override
  final dynamic name;
  @override
  final dynamic brand;
  @override
  final dynamic type;

  /// Create a copy of CarMarkEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarMarkEntitiesCopyWith<_CarMarkEntities> get copyWith =>
      __$CarMarkEntitiesCopyWithImpl<_CarMarkEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarMarkEntities &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(type));

  @override
  String toString() {
    return 'CarMarkEntities(id: $id, name: $name, brand: $brand, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$CarMarkEntitiesCopyWith<$Res>
    implements $CarMarkEntitiesCopyWith<$Res> {
  factory _$CarMarkEntitiesCopyWith(
          _CarMarkEntities value, $Res Function(_CarMarkEntities) _then) =
      __$CarMarkEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({dynamic id, dynamic name, dynamic brand, dynamic type});
}

/// @nodoc
class __$CarMarkEntitiesCopyWithImpl<$Res>
    implements _$CarMarkEntitiesCopyWith<$Res> {
  __$CarMarkEntitiesCopyWithImpl(this._self, this._then);

  final _CarMarkEntities _self;
  final $Res Function(_CarMarkEntities) _then;

  /// Create a copy of CarMarkEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? type = freezed,
  }) {
    return _then(_CarMarkEntities(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
