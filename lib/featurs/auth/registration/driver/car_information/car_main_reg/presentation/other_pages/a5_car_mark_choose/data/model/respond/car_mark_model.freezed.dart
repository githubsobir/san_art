// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_mark_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarMarkModel {
  dynamic get id;
  dynamic get name;
  dynamic get brand;
  dynamic get type;

  /// Create a copy of CarMarkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarMarkModelCopyWith<CarMarkModel> get copyWith =>
      _$CarMarkModelCopyWithImpl<CarMarkModel>(
          this as CarMarkModel, _$identity);

  /// Serializes this CarMarkModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarMarkModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(type));

  @override
  String toString() {
    return 'CarMarkModel(id: $id, name: $name, brand: $brand, type: $type)';
  }
}

/// @nodoc
abstract mixin class $CarMarkModelCopyWith<$Res> {
  factory $CarMarkModelCopyWith(
          CarMarkModel value, $Res Function(CarMarkModel) _then) =
      _$CarMarkModelCopyWithImpl;
  @useResult
  $Res call({dynamic id, dynamic name, dynamic brand, dynamic type});
}

/// @nodoc
class _$CarMarkModelCopyWithImpl<$Res> implements $CarMarkModelCopyWith<$Res> {
  _$CarMarkModelCopyWithImpl(this._self, this._then);

  final CarMarkModel _self;
  final $Res Function(CarMarkModel) _then;

  /// Create a copy of CarMarkModel
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
@JsonSerializable()
class _CarMarkModel extends CarMarkModel {
  _CarMarkModel(
      {required this.id,
      required this.name,
      required this.brand,
      required this.type})
      : super._();
  factory _CarMarkModel.fromJson(Map<String, dynamic> json) =>
      _$CarMarkModelFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic name;
  @override
  final dynamic brand;
  @override
  final dynamic type;

  /// Create a copy of CarMarkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarMarkModelCopyWith<_CarMarkModel> get copyWith =>
      __$CarMarkModelCopyWithImpl<_CarMarkModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CarMarkModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarMarkModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(type));

  @override
  String toString() {
    return 'CarMarkModel(id: $id, name: $name, brand: $brand, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$CarMarkModelCopyWith<$Res>
    implements $CarMarkModelCopyWith<$Res> {
  factory _$CarMarkModelCopyWith(
          _CarMarkModel value, $Res Function(_CarMarkModel) _then) =
      __$CarMarkModelCopyWithImpl;
  @override
  @useResult
  $Res call({dynamic id, dynamic name, dynamic brand, dynamic type});
}

/// @nodoc
class __$CarMarkModelCopyWithImpl<$Res>
    implements _$CarMarkModelCopyWith<$Res> {
  __$CarMarkModelCopyWithImpl(this._self, this._then);

  final _CarMarkModel _self;
  final $Res Function(_CarMarkModel) _then;

  /// Create a copy of CarMarkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? type = freezed,
  }) {
    return _then(_CarMarkModel(
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
