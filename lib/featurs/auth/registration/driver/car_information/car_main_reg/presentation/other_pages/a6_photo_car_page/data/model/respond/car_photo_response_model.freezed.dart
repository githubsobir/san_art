// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_photo_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarPhotoResponseModel {
  bool get isSuccess;
  String get message;
  String get errorCode;

  /// Create a copy of CarPhotoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarPhotoResponseModelCopyWith<CarPhotoResponseModel> get copyWith =>
      _$CarPhotoResponseModelCopyWithImpl<CarPhotoResponseModel>(
          this as CarPhotoResponseModel, _$identity);

  /// Serializes this CarPhotoResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarPhotoResponseModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message, errorCode);

  @override
  String toString() {
    return 'CarPhotoResponseModel(isSuccess: $isSuccess, message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $CarPhotoResponseModelCopyWith<$Res> {
  factory $CarPhotoResponseModelCopyWith(CarPhotoResponseModel value,
          $Res Function(CarPhotoResponseModel) _then) =
      _$CarPhotoResponseModelCopyWithImpl;
  @useResult
  $Res call({bool isSuccess, String message, String errorCode});
}

/// @nodoc
class _$CarPhotoResponseModelCopyWithImpl<$Res>
    implements $CarPhotoResponseModelCopyWith<$Res> {
  _$CarPhotoResponseModelCopyWithImpl(this._self, this._then);

  final CarPhotoResponseModel _self;
  final $Res Function(CarPhotoResponseModel) _then;

  /// Create a copy of CarPhotoResponseModel
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
@JsonSerializable()
class _CarPhotoResponseModel extends CarPhotoResponseModel {
  _CarPhotoResponseModel(
      {required this.isSuccess, required this.message, required this.errorCode})
      : super._();
  factory _CarPhotoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CarPhotoResponseModelFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String message;
  @override
  final String errorCode;

  /// Create a copy of CarPhotoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarPhotoResponseModelCopyWith<_CarPhotoResponseModel> get copyWith =>
      __$CarPhotoResponseModelCopyWithImpl<_CarPhotoResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CarPhotoResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarPhotoResponseModel &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message, errorCode);

  @override
  String toString() {
    return 'CarPhotoResponseModel(isSuccess: $isSuccess, message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class _$CarPhotoResponseModelCopyWith<$Res>
    implements $CarPhotoResponseModelCopyWith<$Res> {
  factory _$CarPhotoResponseModelCopyWith(_CarPhotoResponseModel value,
          $Res Function(_CarPhotoResponseModel) _then) =
      __$CarPhotoResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({bool isSuccess, String message, String errorCode});
}

/// @nodoc
class __$CarPhotoResponseModelCopyWithImpl<$Res>
    implements _$CarPhotoResponseModelCopyWith<$Res> {
  __$CarPhotoResponseModelCopyWithImpl(this._self, this._then);

  final _CarPhotoResponseModel _self;
  final $Res Function(_CarPhotoResponseModel) _then;

  /// Create a copy of CarPhotoResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
    Object? errorCode = null,
  }) {
    return _then(_CarPhotoResponseModel(
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
