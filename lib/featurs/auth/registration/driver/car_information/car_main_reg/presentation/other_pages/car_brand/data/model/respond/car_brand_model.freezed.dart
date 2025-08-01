// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarBrandModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of CarBrandModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarBrandModelCopyWith<CarBrandModel> get copyWith =>
      _$CarBrandModelCopyWithImpl<CarBrandModel>(
          this as CarBrandModel, _$identity);

  /// Serializes this CarBrandModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarBrandModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'CarBrandModel(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $CarBrandModelCopyWith<$Res> {
  factory $CarBrandModelCopyWith(
          CarBrandModel value, $Res Function(CarBrandModel) _then) =
      _$CarBrandModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$CarBrandModelCopyWithImpl<$Res>
    implements $CarBrandModelCopyWith<$Res> {
  _$CarBrandModelCopyWithImpl(this._self, this._then);

  final CarBrandModel _self;
  final $Res Function(CarBrandModel) _then;

  /// Create a copy of CarBrandModel
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
@JsonSerializable()
class _CarBrandModel extends CarBrandModel {
  _CarBrandModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name})
      : super._();
  factory _CarBrandModel.fromJson(Map<String, dynamic> json) =>
      _$CarBrandModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Create a copy of CarBrandModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarBrandModelCopyWith<_CarBrandModel> get copyWith =>
      __$CarBrandModelCopyWithImpl<_CarBrandModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CarBrandModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarBrandModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'CarBrandModel(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CarBrandModelCopyWith<$Res>
    implements $CarBrandModelCopyWith<$Res> {
  factory _$CarBrandModelCopyWith(
          _CarBrandModel value, $Res Function(_CarBrandModel) _then) =
      __$CarBrandModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$CarBrandModelCopyWithImpl<$Res>
    implements _$CarBrandModelCopyWith<$Res> {
  __$CarBrandModelCopyWithImpl(this._self, this._then);

  final _CarBrandModel _self;
  final $Res Function(_CarBrandModel) _then;

  /// Create a copy of CarBrandModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_CarBrandModel(
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
