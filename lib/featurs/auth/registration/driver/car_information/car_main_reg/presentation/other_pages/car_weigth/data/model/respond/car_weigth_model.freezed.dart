// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_weigth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarWeightModel {
  dynamic get id;
  dynamic get name;
  dynamic get description; // null bo'lishi mumkin
  @JsonKey(name: 'weight_max')
  dynamic get weightMax;
  @JsonKey(name: 'weight_min')
  dynamic get weightMin;
  dynamic get status;

  /// Create a copy of CarWeightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarWeightModelCopyWith<CarWeightModel> get copyWith =>
      _$CarWeightModelCopyWithImpl<CarWeightModel>(
          this as CarWeightModel, _$identity);

  /// Serializes this CarWeightModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarWeightModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.weightMax, weightMax) &&
            const DeepCollectionEquality().equals(other.weightMin, weightMin) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'CarWeightModel(id: $id, name: $name, description: $description, weightMax: $weightMax, weightMin: $weightMin, status: $status)';
  }
}

/// @nodoc
abstract mixin class $CarWeightModelCopyWith<$Res> {
  factory $CarWeightModelCopyWith(
          CarWeightModel value, $Res Function(CarWeightModel) _then) =
      _$CarWeightModelCopyWithImpl;
  @useResult
  $Res call(
      {dynamic id,
      dynamic name,
      dynamic description,
      @JsonKey(name: 'weight_max') dynamic weightMax,
      @JsonKey(name: 'weight_min') dynamic weightMin,
      dynamic status});
}

/// @nodoc
class _$CarWeightModelCopyWithImpl<$Res>
    implements $CarWeightModelCopyWith<$Res> {
  _$CarWeightModelCopyWithImpl(this._self, this._then);

  final CarWeightModel _self;
  final $Res Function(CarWeightModel) _then;

  /// Create a copy of CarWeightModel
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
@JsonSerializable()
class _CarWeightModel extends CarWeightModel {
  _CarWeightModel(
      {required this.id,
      required this.name,
      this.description,
      @JsonKey(name: 'weight_max') required this.weightMax,
      @JsonKey(name: 'weight_min') required this.weightMin,
      required this.status})
      : super._();
  factory _CarWeightModel.fromJson(Map<String, dynamic> json) =>
      _$CarWeightModelFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic name;
  @override
  final dynamic description;
// null bo'lishi mumkin
  @override
  @JsonKey(name: 'weight_max')
  final dynamic weightMax;
  @override
  @JsonKey(name: 'weight_min')
  final dynamic weightMin;
  @override
  final dynamic status;

  /// Create a copy of CarWeightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarWeightModelCopyWith<_CarWeightModel> get copyWith =>
      __$CarWeightModelCopyWithImpl<_CarWeightModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CarWeightModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarWeightModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.weightMax, weightMax) &&
            const DeepCollectionEquality().equals(other.weightMin, weightMin) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'CarWeightModel(id: $id, name: $name, description: $description, weightMax: $weightMax, weightMin: $weightMin, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$CarWeightModelCopyWith<$Res>
    implements $CarWeightModelCopyWith<$Res> {
  factory _$CarWeightModelCopyWith(
          _CarWeightModel value, $Res Function(_CarWeightModel) _then) =
      __$CarWeightModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic name,
      dynamic description,
      @JsonKey(name: 'weight_max') dynamic weightMax,
      @JsonKey(name: 'weight_min') dynamic weightMin,
      dynamic status});
}

/// @nodoc
class __$CarWeightModelCopyWithImpl<$Res>
    implements _$CarWeightModelCopyWith<$Res> {
  __$CarWeightModelCopyWithImpl(this._self, this._then);

  final _CarWeightModel _self;
  final $Res Function(_CarWeightModel) _then;

  /// Create a copy of CarWeightModel
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
    return _then(_CarWeightModel(
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
