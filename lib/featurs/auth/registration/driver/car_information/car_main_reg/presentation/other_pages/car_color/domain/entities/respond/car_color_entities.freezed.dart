// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_color_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarColorEntities {
  int get id;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'name_uz')
  String get nameUz;
  @JsonKey(name: 'name_ru')
  String get nameRu;
  @JsonKey(name: 'name_en')
  String get nameEn;
  @JsonKey(name: 'rgb')
  dynamic get rgm;

  /// Create a copy of CarColorEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarColorEntitiesCopyWith<CarColorEntities> get copyWith =>
      _$CarColorEntitiesCopyWithImpl<CarColorEntities>(
          this as CarColorEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarColorEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            const DeepCollectionEquality().equals(other.rgm, rgm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameUz, nameRu, nameEn,
      const DeepCollectionEquality().hash(rgm));

  @override
  String toString() {
    return 'CarColorEntities(id: $id, name: $name, nameUz: $nameUz, nameRu: $nameRu, nameEn: $nameEn, rgm: $rgm)';
  }
}

/// @nodoc
abstract mixin class $CarColorEntitiesCopyWith<$Res> {
  factory $CarColorEntitiesCopyWith(
          CarColorEntities value, $Res Function(CarColorEntities) _then) =
      _$CarColorEntitiesCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'name_uz') String nameUz,
      @JsonKey(name: 'name_ru') String nameRu,
      @JsonKey(name: 'name_en') String nameEn,
      @JsonKey(name: 'rgb') dynamic rgm});
}

/// @nodoc
class _$CarColorEntitiesCopyWithImpl<$Res>
    implements $CarColorEntitiesCopyWith<$Res> {
  _$CarColorEntitiesCopyWithImpl(this._self, this._then);

  final CarColorEntities _self;
  final $Res Function(CarColorEntities) _then;

  /// Create a copy of CarColorEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nameUz = null,
    Object? nameRu = null,
    Object? nameEn = null,
    Object? rgm = freezed,
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
      nameUz: null == nameUz
          ? _self.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String,
      nameRu: null == nameRu
          ? _self.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _self.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      rgm: freezed == rgm
          ? _self.rgm
          : rgm // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _CarColorEntities implements CarColorEntities {
  _CarColorEntities(
      {required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'name_uz') required this.nameUz,
      @JsonKey(name: 'name_ru') required this.nameRu,
      @JsonKey(name: 'name_en') required this.nameEn,
      @JsonKey(name: 'rgb') required this.rgm});

  @override
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'name_uz')
  final String nameUz;
  @override
  @JsonKey(name: 'name_ru')
  final String nameRu;
  @override
  @JsonKey(name: 'name_en')
  final String nameEn;
  @override
  @JsonKey(name: 'rgb')
  final dynamic rgm;

  /// Create a copy of CarColorEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarColorEntitiesCopyWith<_CarColorEntities> get copyWith =>
      __$CarColorEntitiesCopyWithImpl<_CarColorEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarColorEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            const DeepCollectionEquality().equals(other.rgm, rgm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameUz, nameRu, nameEn,
      const DeepCollectionEquality().hash(rgm));

  @override
  String toString() {
    return 'CarColorEntities(id: $id, name: $name, nameUz: $nameUz, nameRu: $nameRu, nameEn: $nameEn, rgm: $rgm)';
  }
}

/// @nodoc
abstract mixin class _$CarColorEntitiesCopyWith<$Res>
    implements $CarColorEntitiesCopyWith<$Res> {
  factory _$CarColorEntitiesCopyWith(
          _CarColorEntities value, $Res Function(_CarColorEntities) _then) =
      __$CarColorEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'name_uz') String nameUz,
      @JsonKey(name: 'name_ru') String nameRu,
      @JsonKey(name: 'name_en') String nameEn,
      @JsonKey(name: 'rgb') dynamic rgm});
}

/// @nodoc
class __$CarColorEntitiesCopyWithImpl<$Res>
    implements _$CarColorEntitiesCopyWith<$Res> {
  __$CarColorEntitiesCopyWithImpl(this._self, this._then);

  final _CarColorEntities _self;
  final $Res Function(_CarColorEntities) _then;

  /// Create a copy of CarColorEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nameUz = null,
    Object? nameRu = null,
    Object? nameEn = null,
    Object? rgm = freezed,
  }) {
    return _then(_CarColorEntities(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameUz: null == nameUz
          ? _self.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String,
      nameRu: null == nameRu
          ? _self.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _self.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      rgm: freezed == rgm
          ? _self.rgm
          : rgm // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
