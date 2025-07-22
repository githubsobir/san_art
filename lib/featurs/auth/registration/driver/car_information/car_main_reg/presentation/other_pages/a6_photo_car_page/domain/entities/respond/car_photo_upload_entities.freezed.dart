// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_photo_upload_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarPhotoUploadEntities {
  bool get isSuccess;
  String get message;
  String get errorCode;

  /// Create a copy of CarPhotoUploadEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarPhotoUploadEntitiesCopyWith<CarPhotoUploadEntities> get copyWith =>
      _$CarPhotoUploadEntitiesCopyWithImpl<CarPhotoUploadEntities>(
          this as CarPhotoUploadEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarPhotoUploadEntities &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message, errorCode);

  @override
  String toString() {
    return 'CarPhotoUploadEntities(isSuccess: $isSuccess, message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $CarPhotoUploadEntitiesCopyWith<$Res> {
  factory $CarPhotoUploadEntitiesCopyWith(CarPhotoUploadEntities value,
          $Res Function(CarPhotoUploadEntities) _then) =
      _$CarPhotoUploadEntitiesCopyWithImpl;
  @useResult
  $Res call({bool isSuccess, String message, String errorCode});
}

/// @nodoc
class _$CarPhotoUploadEntitiesCopyWithImpl<$Res>
    implements $CarPhotoUploadEntitiesCopyWith<$Res> {
  _$CarPhotoUploadEntitiesCopyWithImpl(this._self, this._then);

  final CarPhotoUploadEntities _self;
  final $Res Function(CarPhotoUploadEntities) _then;

  /// Create a copy of CarPhotoUploadEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? errorCode = null,
  }) {
    return _then(_self.copyWith(
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CarPhotoUploadEntities implements CarPhotoUploadEntities {
  _CarPhotoUploadEntities(
      {required this.isSuccess,
      required this.message,
      required this.errorCode});

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final String errorCode;

  /// Create a copy of CarPhotoUploadEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarPhotoUploadEntitiesCopyWith<_CarPhotoUploadEntities> get copyWith =>
      __$CarPhotoUploadEntitiesCopyWithImpl<_CarPhotoUploadEntities>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarPhotoUploadEntities &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message, errorCode);

  @override
  String toString() {
    return 'CarPhotoUploadEntities(isSuccess: $isSuccess, message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class _$CarPhotoUploadEntitiesCopyWith<$Res>
    implements $CarPhotoUploadEntitiesCopyWith<$Res> {
  factory _$CarPhotoUploadEntitiesCopyWith(_CarPhotoUploadEntities value,
          $Res Function(_CarPhotoUploadEntities) _then) =
      __$CarPhotoUploadEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({bool isSuccess, String message, String errorCode});
}

/// @nodoc
class __$CarPhotoUploadEntitiesCopyWithImpl<$Res>
    implements _$CarPhotoUploadEntitiesCopyWith<$Res> {
  __$CarPhotoUploadEntitiesCopyWithImpl(this._self, this._then);

  final _CarPhotoUploadEntities _self;
  final $Res Function(_CarPhotoUploadEntities) _then;

  /// Create a copy of CarPhotoUploadEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? errorCode = null,
  }) {
    return _then(_CarPhotoUploadEntities(
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
