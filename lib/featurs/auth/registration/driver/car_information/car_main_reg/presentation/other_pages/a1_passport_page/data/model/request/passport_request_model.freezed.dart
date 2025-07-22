// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassportRequestModel {
  String get serNum;
  String get datePassport;
  String get fileName;
  String get filePath;

  /// Create a copy of PassportRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportRequestModelCopyWith<PassportRequestModel> get copyWith =>
      _$PassportRequestModelCopyWithImpl<PassportRequestModel>(
          this as PassportRequestModel, _$identity);

  /// Serializes this PassportRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassportRequestModel &&
            (identical(other.serNum, serNum) || other.serNum == serNum) &&
            (identical(other.datePassport, datePassport) ||
                other.datePassport == datePassport) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, serNum, datePassport, fileName, filePath);

  @override
  String toString() {
    return 'PassportRequestModel(serNum: $serNum, datePassport: $datePassport, fileName: $fileName, filePath: $filePath)';
  }
}

/// @nodoc
abstract mixin class $PassportRequestModelCopyWith<$Res> {
  factory $PassportRequestModelCopyWith(PassportRequestModel value,
          $Res Function(PassportRequestModel) _then) =
      _$PassportRequestModelCopyWithImpl;
  @useResult
  $Res call(
      {String serNum, String datePassport, String fileName, String filePath});
}

/// @nodoc
class _$PassportRequestModelCopyWithImpl<$Res>
    implements $PassportRequestModelCopyWith<$Res> {
  _$PassportRequestModelCopyWithImpl(this._self, this._then);

  final PassportRequestModel _self;
  final $Res Function(PassportRequestModel) _then;

  /// Create a copy of PassportRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serNum = null,
    Object? datePassport = null,
    Object? fileName = null,
    Object? filePath = null,
  }) {
    return _then(_self.copyWith(
      serNum: null == serNum
          ? _self.serNum
          : serNum // ignore: cast_nullable_to_non_nullable
              as String,
      datePassport: null == datePassport
          ? _self.datePassport
          : datePassport // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PassportRequestModel extends PassportRequestModel {
  _PassportRequestModel(
      {required this.serNum,
      required this.datePassport,
      required this.fileName,
      required this.filePath})
      : super._();
  factory _PassportRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PassportRequestModelFromJson(json);

  @override
  final String serNum;
  @override
  final String datePassport;
  @override
  final String fileName;
  @override
  final String filePath;

  /// Create a copy of PassportRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PassportRequestModelCopyWith<_PassportRequestModel> get copyWith =>
      __$PassportRequestModelCopyWithImpl<_PassportRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PassportRequestModel &&
            (identical(other.serNum, serNum) || other.serNum == serNum) &&
            (identical(other.datePassport, datePassport) ||
                other.datePassport == datePassport) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, serNum, datePassport, fileName, filePath);

  @override
  String toString() {
    return 'PassportRequestModel(serNum: $serNum, datePassport: $datePassport, fileName: $fileName, filePath: $filePath)';
  }
}

/// @nodoc
abstract mixin class _$PassportRequestModelCopyWith<$Res>
    implements $PassportRequestModelCopyWith<$Res> {
  factory _$PassportRequestModelCopyWith(_PassportRequestModel value,
          $Res Function(_PassportRequestModel) _then) =
      __$PassportRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String serNum, String datePassport, String fileName, String filePath});
}

/// @nodoc
class __$PassportRequestModelCopyWithImpl<$Res>
    implements _$PassportRequestModelCopyWith<$Res> {
  __$PassportRequestModelCopyWithImpl(this._self, this._then);

  final _PassportRequestModel _self;
  final $Res Function(_PassportRequestModel) _then;

  /// Create a copy of PassportRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? serNum = null,
    Object? datePassport = null,
    Object? fileName = null,
    Object? filePath = null,
  }) {
    return _then(_PassportRequestModel(
      serNum: null == serNum
          ? _self.serNum
          : serNum // ignore: cast_nullable_to_non_nullable
              as String,
      datePassport: null == datePassport
          ? _self.datePassport
          : datePassport // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
