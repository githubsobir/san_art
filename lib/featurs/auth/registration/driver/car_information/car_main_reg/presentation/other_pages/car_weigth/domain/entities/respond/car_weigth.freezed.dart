// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_weigth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarWeightEntity {
  dynamic get id;
  dynamic get name;
  dynamic get description;
  dynamic get weightMax;
  dynamic get weightMin;
  dynamic get status;

  /// Create a copy of CarWeightEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarWeightEntityCopyWith<CarWeightEntity> get copyWith =>
      _$CarWeightEntityCopyWithImpl<CarWeightEntity>(
          this as CarWeightEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarWeightEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.weightMax, weightMax) &&
            const DeepCollectionEquality().equals(other.weightMin, weightMin) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(weightMax),
      const DeepCollectionEquality().hash(weightMin),
      const DeepCollectionEquality().hash(status));

  @override
  String toString() {
    return 'CarWeightEntity(id: $id, name: $name, description: $description, weightMax: $weightMax, weightMin: $weightMin, status: $status)';
  }
}

/// @nodoc
abstract mixin class $CarWeightEntityCopyWith<$Res> {
  factory $CarWeightEntityCopyWith(
          CarWeightEntity value, $Res Function(CarWeightEntity) _then) =
      _$CarWeightEntityCopyWithImpl;
  @useResult
  $Res call(
      {dynamic id,
      dynamic name,
      dynamic description,
      dynamic weightMax,
      dynamic weightMin,
      dynamic status});
}

/// @nodoc
class _$CarWeightEntityCopyWithImpl<$Res>
    implements $CarWeightEntityCopyWith<$Res> {
  _$CarWeightEntityCopyWithImpl(this._self, this._then);

  final CarWeightEntity _self;
  final $Res Function(CarWeightEntity) _then;

  /// Create a copy of CarWeightEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? weightMax = freezed,
    Object? weightMin = freezed,
    Object? status = freezed,
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
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      weightMax: freezed == weightMax
          ? _self.weightMax
          : weightMax // ignore: cast_nullable_to_non_nullable
              as dynamic,
      weightMin: freezed == weightMin
          ? _self.weightMin
          : weightMin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _CarWeightEntity implements CarWeightEntity {
  _CarWeightEntity(
      {required this.id,
      required this.name,
      required this.description,
      required this.weightMax,
      required this.weightMin,
      required this.status});

  @override
  final dynamic id;
  @override
  final dynamic name;
  @override
  final dynamic description;
  @override
  final dynamic weightMax;
  @override
  final dynamic weightMin;
  @override
  final dynamic status;

  /// Create a copy of CarWeightEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarWeightEntityCopyWith<_CarWeightEntity> get copyWith =>
      __$CarWeightEntityCopyWithImpl<_CarWeightEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarWeightEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.weightMax, weightMax) &&
            const DeepCollectionEquality().equals(other.weightMin, weightMin) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(weightMax),
      const DeepCollectionEquality().hash(weightMin),
      const DeepCollectionEquality().hash(status));

  @override
  String toString() {
    return 'CarWeightEntity(id: $id, name: $name, description: $description, weightMax: $weightMax, weightMin: $weightMin, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$CarWeightEntityCopyWith<$Res>
    implements $CarWeightEntityCopyWith<$Res> {
  factory _$CarWeightEntityCopyWith(
          _CarWeightEntity value, $Res Function(_CarWeightEntity) _then) =
      __$CarWeightEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic name,
      dynamic description,
      dynamic weightMax,
      dynamic weightMin,
      dynamic status});
}

/// @nodoc
class __$CarWeightEntityCopyWithImpl<$Res>
    implements _$CarWeightEntityCopyWith<$Res> {
  __$CarWeightEntityCopyWithImpl(this._self, this._then);

  final _CarWeightEntity _self;
  final $Res Function(_CarWeightEntity) _then;

  /// Create a copy of CarWeightEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? weightMax = freezed,
    Object? weightMin = freezed,
    Object? status = freezed,
  }) {
    return _then(_CarWeightEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      weightMax: freezed == weightMax
          ? _self.weightMax
          : weightMax // ignore: cast_nullable_to_non_nullable
              as dynamic,
      weightMin: freezed == weightMin
          ? _self.weightMin
          : weightMin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
