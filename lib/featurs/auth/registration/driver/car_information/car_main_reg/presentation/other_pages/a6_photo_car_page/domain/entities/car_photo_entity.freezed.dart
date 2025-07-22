// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_photo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarPhotoEntity {
  String get filePath;
  String get fileName;

  /// Create a copy of CarPhotoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarPhotoEntityCopyWith<CarPhotoEntity> get copyWith =>
      _$CarPhotoEntityCopyWithImpl<CarPhotoEntity>(
          this as CarPhotoEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarPhotoEntity &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath, fileName);

  @override
  String toString() {
    return 'CarPhotoEntity(filePath: $filePath, fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class $CarPhotoEntityCopyWith<$Res> {
  factory $CarPhotoEntityCopyWith(
          CarPhotoEntity value, $Res Function(CarPhotoEntity) _then) =
      _$CarPhotoEntityCopyWithImpl;
  @useResult
  $Res call({String filePath, String fileName});
}

/// @nodoc
class _$CarPhotoEntityCopyWithImpl<$Res>
    implements $CarPhotoEntityCopyWith<$Res> {
  _$CarPhotoEntityCopyWithImpl(this._self, this._then);

  final CarPhotoEntity _self;
  final $Res Function(CarPhotoEntity) _then;

  /// Create a copy of CarPhotoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? fileName = null,
  }) {
    return _then(_self.copyWith(
      filePath: null == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CarPhotoEntity implements CarPhotoEntity {
  _CarPhotoEntity({required this.filePath, required this.fileName});

  @override
  final String filePath;
  @override
  final String fileName;

  /// Create a copy of CarPhotoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarPhotoEntityCopyWith<_CarPhotoEntity> get copyWith =>
      __$CarPhotoEntityCopyWithImpl<_CarPhotoEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarPhotoEntity &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath, fileName);

  @override
  String toString() {
    return 'CarPhotoEntity(filePath: $filePath, fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class _$CarPhotoEntityCopyWith<$Res>
    implements $CarPhotoEntityCopyWith<$Res> {
  factory _$CarPhotoEntityCopyWith(
          _CarPhotoEntity value, $Res Function(_CarPhotoEntity) _then) =
      __$CarPhotoEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String filePath, String fileName});
}

/// @nodoc
class __$CarPhotoEntityCopyWithImpl<$Res>
    implements _$CarPhotoEntityCopyWith<$Res> {
  __$CarPhotoEntityCopyWithImpl(this._self, this._then);

  final _CarPhotoEntity _self;
  final $Res Function(_CarPhotoEntity) _then;

  /// Create a copy of CarPhotoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filePath = null,
    Object? fileName = null,
  }) {
    return _then(_CarPhotoEntity(
      filePath: null == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
