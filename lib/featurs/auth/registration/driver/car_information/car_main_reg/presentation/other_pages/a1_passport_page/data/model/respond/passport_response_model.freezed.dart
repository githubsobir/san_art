// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassportResponseModel {
  String get success;
  String get message;
  String get errorCode;

  /// Create a copy of PassportResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportResponseModelCopyWith<PassportResponseModel> get copyWith =>
      _$PassportResponseModelCopyWithImpl<PassportResponseModel>(
          this as PassportResponseModel, _$identity);

  /// Serializes this PassportResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassportResponseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, errorCode);

  @override
  String toString() {
    return 'PassportResponseModel(success: $success, message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $PassportResponseModelCopyWith<$Res> {
  factory $PassportResponseModelCopyWith(PassportResponseModel value,
          $Res Function(PassportResponseModel) _then) =
      _$PassportResponseModelCopyWithImpl;
  @useResult
  $Res call({String success, String message, String errorCode});
}

/// @nodoc
class _$PassportResponseModelCopyWithImpl<$Res>
    implements $PassportResponseModelCopyWith<$Res> {
  _$PassportResponseModelCopyWithImpl(this._self, this._then);

  final PassportResponseModel _self;
  final $Res Function(PassportResponseModel) _then;

  /// Create a copy of PassportResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? errorCode = null,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
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
class _PassportResponseModel extends PassportResponseModel {
  _PassportResponseModel(
      {required this.success, required this.message, required this.errorCode})
      : super._();
  factory _PassportResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PassportResponseModelFromJson(json);

  @override
  final String success;
  @override
  final String message;
  @override
  final String errorCode;

  /// Create a copy of PassportResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PassportResponseModelCopyWith<_PassportResponseModel> get copyWith =>
      __$PassportResponseModelCopyWithImpl<_PassportResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PassportResponseModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, errorCode);

  @override
  String toString() {
    return 'PassportResponseModel(success: $success, message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class _$PassportResponseModelCopyWith<$Res>
    implements $PassportResponseModelCopyWith<$Res> {
  factory _$PassportResponseModelCopyWith(_PassportResponseModel value,
          $Res Function(_PassportResponseModel) _then) =
      __$PassportResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({String success, String message, String errorCode});
}

/// @nodoc
class __$PassportResponseModelCopyWithImpl<$Res>
    implements _$PassportResponseModelCopyWith<$Res> {
  __$PassportResponseModelCopyWithImpl(this._self, this._then);

  final _PassportResponseModel _self;
  final $Res Function(_PassportResponseModel) _then;

  /// Create a copy of PassportResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? errorCode = null,
  }) {
    return _then(_PassportResponseModel(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
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
