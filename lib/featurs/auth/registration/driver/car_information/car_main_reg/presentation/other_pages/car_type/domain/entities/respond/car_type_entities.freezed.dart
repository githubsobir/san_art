// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_type_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarTypeEntities {
  int get id;
  dynamic get name;
  dynamic get description;
  dynamic get weightType;
  dynamic get image;
  bool get status;

  /// Create a copy of CarTypeEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarTypeEntitiesCopyWith<CarTypeEntities> get copyWith =>
      _$CarTypeEntitiesCopyWithImpl<CarTypeEntities>(
          this as CarTypeEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarTypeEntities &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.weightType, weightType) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(weightType),
      const DeepCollectionEquality().hash(image),
      status);

  @override
  String toString() {
    return 'CarTypeEntities(id: $id, name: $name, description: $description, weightType: $weightType, image: $image, status: $status)';
  }
}

/// @nodoc
abstract mixin class $CarTypeEntitiesCopyWith<$Res> {
  factory $CarTypeEntitiesCopyWith(
          CarTypeEntities value, $Res Function(CarTypeEntities) _then) =
      _$CarTypeEntitiesCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      dynamic name,
      dynamic description,
      dynamic weightType,
      dynamic image,
      bool status});
}

/// @nodoc
class _$CarTypeEntitiesCopyWithImpl<$Res>
    implements $CarTypeEntitiesCopyWith<$Res> {
  _$CarTypeEntitiesCopyWithImpl(this._self, this._then);

  final CarTypeEntities _self;
  final $Res Function(CarTypeEntities) _then;

  /// Create a copy of CarTypeEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? weightType = freezed,
    Object? image = freezed,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      weightType: freezed == weightType
          ? _self.weightType
          : weightType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _CartTypeEntities implements CarTypeEntities {
  _CartTypeEntities(
      {required this.id,
      required this.name,
      required this.description,
      required this.weightType,
      required this.image,
      required this.status});

  @override
  final int id;
  @override
  final dynamic name;
  @override
  final dynamic description;
  @override
  final dynamic weightType;
  @override
  final dynamic image;
  @override
  final bool status;

  /// Create a copy of CarTypeEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CartTypeEntitiesCopyWith<_CartTypeEntities> get copyWith =>
      __$CartTypeEntitiesCopyWithImpl<_CartTypeEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartTypeEntities &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.weightType, weightType) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(weightType),
      const DeepCollectionEquality().hash(image),
      status);

  @override
  String toString() {
    return 'CarTypeEntities(id: $id, name: $name, description: $description, weightType: $weightType, image: $image, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$CartTypeEntitiesCopyWith<$Res>
    implements $CarTypeEntitiesCopyWith<$Res> {
  factory _$CartTypeEntitiesCopyWith(
          _CartTypeEntities value, $Res Function(_CartTypeEntities) _then) =
      __$CartTypeEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      dynamic name,
      dynamic description,
      dynamic weightType,
      dynamic image,
      bool status});
}

/// @nodoc
class __$CartTypeEntitiesCopyWithImpl<$Res>
    implements _$CartTypeEntitiesCopyWith<$Res> {
  __$CartTypeEntitiesCopyWithImpl(this._self, this._then);

  final _CartTypeEntities _self;
  final $Res Function(_CartTypeEntities) _then;

  /// Create a copy of CarTypeEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? weightType = freezed,
    Object? image = freezed,
    Object? status = null,
  }) {
    return _then(_CartTypeEntities(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      weightType: freezed == weightType
          ? _self.weightType
          : weightType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
