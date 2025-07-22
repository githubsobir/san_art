// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarPhotoModel {
  String get filePath;
  String get fileName;

  /// Create a copy of CarPhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarPhotoModelCopyWith<CarPhotoModel> get copyWith =>
      _$CarPhotoModelCopyWithImpl<CarPhotoModel>(
          this as CarPhotoModel, _$identity);

  /// Serializes this CarPhotoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarPhotoModel &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filePath, fileName);

  @override
  String toString() {
    return 'CarPhotoModel(filePath: $filePath, fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class $CarPhotoModelCopyWith<$Res> {
  factory $CarPhotoModelCopyWith(
          CarPhotoModel value, $Res Function(CarPhotoModel) _then) =
      _$CarPhotoModelCopyWithImpl;
  @useResult
  $Res call({String filePath, String fileName});
}

/// @nodoc
class _$CarPhotoModelCopyWithImpl<$Res>
    implements $CarPhotoModelCopyWith<$Res> {
  _$CarPhotoModelCopyWithImpl(this._self, this._then);

  final CarPhotoModel _self;
  final $Res Function(CarPhotoModel) _then;

  /// Create a copy of CarPhotoModel
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
@JsonSerializable()
class _CarPhotoModel extends CarPhotoModel {
  _CarPhotoModel({required this.filePath, required this.fileName}) : super._();
  factory _CarPhotoModel.fromJson(Map<String, dynamic> json) =>
      _$CarPhotoModelFromJson(json);

  @override
  final String filePath;
  @override
  final String fileName;

  /// Create a copy of CarPhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarPhotoModelCopyWith<_CarPhotoModel> get copyWith =>
      __$CarPhotoModelCopyWithImpl<_CarPhotoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CarPhotoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarPhotoModel &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filePath, fileName);

  @override
  String toString() {
    return 'CarPhotoModel(filePath: $filePath, fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class _$CarPhotoModelCopyWith<$Res>
    implements $CarPhotoModelCopyWith<$Res> {
  factory _$CarPhotoModelCopyWith(
          _CarPhotoModel value, $Res Function(_CarPhotoModel) _then) =
      __$CarPhotoModelCopyWithImpl;
  @override
  @useResult
  $Res call({String filePath, String fileName});
}

/// @nodoc
class __$CarPhotoModelCopyWithImpl<$Res>
    implements _$CarPhotoModelCopyWith<$Res> {
  __$CarPhotoModelCopyWithImpl(this._self, this._then);

  final _CarPhotoModel _self;
  final $Res Function(_CarPhotoModel) _then;

  /// Create a copy of CarPhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filePath = null,
    Object? fileName = null,
  }) {
    return _then(_CarPhotoModel(
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
