// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseModel {
  String get detail;

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      _$LoginResponseModelCopyWithImpl<LoginResponseModel>(
          this as LoginResponseModel, _$identity);

  /// Serializes this LoginResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginResponseModel &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @override
  String toString() {
    return 'LoginResponseModel(detail: $detail)';
  }
}

/// @nodoc
abstract mixin class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) _then) =
      _$LoginResponseModelCopyWithImpl;
  @useResult
  $Res call({String detail});
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._self, this._then);

  final LoginResponseModel _self;
  final $Res Function(LoginResponseModel) _then;

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_self.copyWith(
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LoginResponseModel extends LoginResponseModel {
  _LoginResponseModel({required this.detail}) : super._();
  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  @override
  final String detail;

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith =>
      __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponseModel &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @override
  String toString() {
    return 'LoginResponseModel(detail: $detail)';
  }
}

/// @nodoc
abstract mixin class _$LoginResponseModelCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(
          _LoginResponseModel value, $Res Function(_LoginResponseModel) _then) =
      __$LoginResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({String detail});
}

/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(this._self, this._then);

  final _LoginResponseModel _self;
  final $Res Function(_LoginResponseModel) _then;

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? detail = null,
  }) {
    return _then(_LoginResponseModel(
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
