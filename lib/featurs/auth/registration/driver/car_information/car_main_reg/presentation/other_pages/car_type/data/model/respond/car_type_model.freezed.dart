// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarTypeModel {
  int get id;
  dynamic get name;
  dynamic get description;
  @JsonKey(name: 'weight_type')
  dynamic get weightType;
  dynamic get image;
  bool get status;

  /// Create a copy of CarTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarTypeModelCopyWith<CarTypeModel> get copyWith =>
      _$CarTypeModelCopyWithImpl<CarTypeModel>(
          this as CarTypeModel, _$identity);

  /// Serializes this CarTypeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.weightType, weightType) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'CarTypeModel(id: $id, name: $name, description: $description, weightType: $weightType, image: $image, status: $status)';
  }
}

/// @nodoc
abstract mixin class $CarTypeModelCopyWith<$Res> {
  factory $CarTypeModelCopyWith(
          CarTypeModel value, $Res Function(CarTypeModel) _then) =
      _$CarTypeModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      dynamic name,
      dynamic description,
      @JsonKey(name: 'weight_type') dynamic weightType,
      dynamic image,
      bool status});
}

/// @nodoc
class _$CarTypeModelCopyWithImpl<$Res> implements $CarTypeModelCopyWith<$Res> {
  _$CarTypeModelCopyWithImpl(this._self, this._then);

  final CarTypeModel _self;
  final $Res Function(CarTypeModel) _then;

  /// Create a copy of CarTypeModel
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
@JsonSerializable()
class _CarTypeModel extends CarTypeModel {
  _CarTypeModel(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: 'weight_type') required this.weightType,
      required this.image,
      required this.status})
      : super._();
  factory _CarTypeModel.fromJson(Map<String, dynamic> json) =>
      _$CarTypeModelFromJson(json);

  @override
  final int id;
  @override
  final dynamic name;
  @override
  final dynamic description;
  @override
  @JsonKey(name: 'weight_type')
  final dynamic weightType;
  @override
  final dynamic image;
  @override
  final bool status;

  /// Create a copy of CarTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarTypeModelCopyWith<_CarTypeModel> get copyWith =>
      __$CarTypeModelCopyWithImpl<_CarTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CarTypeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.weightType, weightType) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'CarTypeModel(id: $id, name: $name, description: $description, weightType: $weightType, image: $image, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$CarTypeModelCopyWith<$Res>
    implements $CarTypeModelCopyWith<$Res> {
  factory _$CarTypeModelCopyWith(
          _CarTypeModel value, $Res Function(_CarTypeModel) _then) =
      __$CarTypeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      dynamic name,
      dynamic description,
      @JsonKey(name: 'weight_type') dynamic weightType,
      dynamic image,
      bool status});
}

/// @nodoc
class __$CarTypeModelCopyWithImpl<$Res>
    implements _$CarTypeModelCopyWith<$Res> {
  __$CarTypeModelCopyWithImpl(this._self, this._then);

  final _CarTypeModel _self;
  final $Res Function(_CarTypeModel) _then;

  /// Create a copy of CarTypeModel
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
    return _then(_CarTypeModel(
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
