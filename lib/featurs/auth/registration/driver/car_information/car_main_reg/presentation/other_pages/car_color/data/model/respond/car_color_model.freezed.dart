// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarColorModel {
  int get id;
  String get name;
  String get name_uz;
  String get name_en;
  String get rgb;

  /// Create a copy of CarColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarColorModelCopyWith<CarColorModel> get copyWith =>
      _$CarColorModelCopyWithImpl<CarColorModel>(
          this as CarColorModel, _$identity);

  /// Serializes this CarColorModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarColorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_uz, name_uz) || other.name_uz == name_uz) &&
            (identical(other.name_en, name_en) || other.name_en == name_en) &&
            (identical(other.rgb, rgb) || other.rgb == rgb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, name_uz, name_en, rgb);

  @override
  String toString() {
    return 'CarColorModel(id: $id, name: $name, name_uz: $name_uz, name_en: $name_en, rgb: $rgb)';
  }
}

/// @nodoc
abstract mixin class $CarColorModelCopyWith<$Res> {
  factory $CarColorModelCopyWith(
          CarColorModel value, $Res Function(CarColorModel) _then) =
      _$CarColorModelCopyWithImpl;
  @useResult
  $Res call({int id, String name, String name_uz, String name_en, String rgb});
}

/// @nodoc
class _$CarColorModelCopyWithImpl<$Res>
    implements $CarColorModelCopyWith<$Res> {
  _$CarColorModelCopyWithImpl(this._self, this._then);

  final CarColorModel _self;
  final $Res Function(CarColorModel) _then;

  /// Create a copy of CarColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? name_uz = null,
    Object? name_en = null,
    Object? rgb = null,
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
      name_uz: null == name_uz
          ? _self.name_uz
          : name_uz // ignore: cast_nullable_to_non_nullable
              as String,
      name_en: null == name_en
          ? _self.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String,
      rgb: null == rgb
          ? _self.rgb
          : rgb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CarColorModel extends CarColorModel {
  _CarColorModel(
      {required this.id,
      required this.name,
      required this.name_uz,
      required this.name_en,
      required this.rgb})
      : super._();
  factory _CarColorModel.fromJson(Map<String, dynamic> json) =>
      _$CarColorModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String name_uz;
  @override
  final String name_en;
  @override
  final String rgb;

  /// Create a copy of CarColorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarColorModelCopyWith<_CarColorModel> get copyWith =>
      __$CarColorModelCopyWithImpl<_CarColorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CarColorModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarColorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_uz, name_uz) || other.name_uz == name_uz) &&
            (identical(other.name_en, name_en) || other.name_en == name_en) &&
            (identical(other.rgb, rgb) || other.rgb == rgb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, name_uz, name_en, rgb);

  @override
  String toString() {
    return 'CarColorModel(id: $id, name: $name, name_uz: $name_uz, name_en: $name_en, rgb: $rgb)';
  }
}

/// @nodoc
abstract mixin class _$CarColorModelCopyWith<$Res>
    implements $CarColorModelCopyWith<$Res> {
  factory _$CarColorModelCopyWith(
          _CarColorModel value, $Res Function(_CarColorModel) _then) =
      __$CarColorModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, String name_uz, String name_en, String rgb});
}

/// @nodoc
class __$CarColorModelCopyWithImpl<$Res>
    implements _$CarColorModelCopyWith<$Res> {
  __$CarColorModelCopyWithImpl(this._self, this._then);

  final _CarColorModel _self;
  final $Res Function(_CarColorModel) _then;

  /// Create a copy of CarColorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? name_uz = null,
    Object? name_en = null,
    Object? rgb = null,
  }) {
    return _then(_CarColorModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      name_uz: null == name_uz
          ? _self.name_uz
          : name_uz // ignore: cast_nullable_to_non_nullable
              as String,
      name_en: null == name_en
          ? _self.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String,
      rgb: null == rgb
          ? _self.rgb
          : rgb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
