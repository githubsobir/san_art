// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_photo_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarPhotoEntities {
  int get car;
  String get type;
  List<String> get images;

  /// Create a copy of CarPhotoEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarPhotoEntitiesCopyWith<CarPhotoEntities> get copyWith =>
      _$CarPhotoEntitiesCopyWithImpl<CarPhotoEntities>(
          this as CarPhotoEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarPhotoEntities &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, car, type, const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'CarPhotoEntities(car: $car, type: $type, images: $images)';
  }
}

/// @nodoc
abstract mixin class $CarPhotoEntitiesCopyWith<$Res> {
  factory $CarPhotoEntitiesCopyWith(
          CarPhotoEntities value, $Res Function(CarPhotoEntities) _then) =
      _$CarPhotoEntitiesCopyWithImpl;
  @useResult
  $Res call({int car, String type, List<String> images});
}

/// @nodoc
class _$CarPhotoEntitiesCopyWithImpl<$Res>
    implements $CarPhotoEntitiesCopyWith<$Res> {
  _$CarPhotoEntitiesCopyWithImpl(this._self, this._then);

  final CarPhotoEntities _self;
  final $Res Function(CarPhotoEntities) _then;

  /// Create a copy of CarPhotoEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
    Object? type = null,
    Object? images = null,
  }) {
    return _then(_self.copyWith(
      car: null == car
          ? _self.car
          : car // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _CarPhotoEntities implements CarPhotoEntities {
  const _CarPhotoEntities(
      {required this.car,
      required this.type,
      required final List<String> images})
      : _images = images;

  @override
  final int car;
  @override
  final String type;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  /// Create a copy of CarPhotoEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarPhotoEntitiesCopyWith<_CarPhotoEntities> get copyWith =>
      __$CarPhotoEntitiesCopyWithImpl<_CarPhotoEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarPhotoEntities &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, car, type, const DeepCollectionEquality().hash(_images));

  @override
  String toString() {
    return 'CarPhotoEntities(car: $car, type: $type, images: $images)';
  }
}

/// @nodoc
abstract mixin class _$CarPhotoEntitiesCopyWith<$Res>
    implements $CarPhotoEntitiesCopyWith<$Res> {
  factory _$CarPhotoEntitiesCopyWith(
          _CarPhotoEntities value, $Res Function(_CarPhotoEntities) _then) =
      __$CarPhotoEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({int car, String type, List<String> images});
}

/// @nodoc
class __$CarPhotoEntitiesCopyWithImpl<$Res>
    implements _$CarPhotoEntitiesCopyWith<$Res> {
  __$CarPhotoEntitiesCopyWithImpl(this._self, this._then);

  final _CarPhotoEntities _self;
  final $Res Function(_CarPhotoEntities) _then;

  /// Create a copy of CarPhotoEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? car = null,
    Object? type = null,
    Object? images = null,
  }) {
    return _then(_CarPhotoEntities(
      car: null == car
          ? _self.car
          : car // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
