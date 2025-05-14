// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationResponseModel {
  String get detail;

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistrationResponseModelCopyWith<RegistrationResponseModel> get copyWith =>
      _$RegistrationResponseModelCopyWithImpl<RegistrationResponseModel>(
          this as RegistrationResponseModel, _$identity);

  /// Serializes this RegistrationResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationResponseModel &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @override
  String toString() {
    return 'RegistrationResponseModel(detail: $detail)';
  }
}

/// @nodoc
abstract mixin class $RegistrationResponseModelCopyWith<$Res> {
  factory $RegistrationResponseModelCopyWith(RegistrationResponseModel value,
          $Res Function(RegistrationResponseModel) _then) =
      _$RegistrationResponseModelCopyWithImpl;
  @useResult
  $Res call({String detail});
}

/// @nodoc
class _$RegistrationResponseModelCopyWithImpl<$Res>
    implements $RegistrationResponseModelCopyWith<$Res> {
  _$RegistrationResponseModelCopyWithImpl(this._self, this._then);

  final RegistrationResponseModel _self;
  final $Res Function(RegistrationResponseModel) _then;

  /// Create a copy of RegistrationResponseModel
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
class _RegistrationResponseModel extends RegistrationResponseModel {
  _RegistrationResponseModel({required this.detail}) : super._();
  factory _RegistrationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseModelFromJson(json);

  @override
  final String detail;

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegistrationResponseModelCopyWith<_RegistrationResponseModel>
      get copyWith =>
          __$RegistrationResponseModelCopyWithImpl<_RegistrationResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegistrationResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegistrationResponseModel &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @override
  String toString() {
    return 'RegistrationResponseModel(detail: $detail)';
  }
}

/// @nodoc
abstract mixin class _$RegistrationResponseModelCopyWith<$Res>
    implements $RegistrationResponseModelCopyWith<$Res> {
  factory _$RegistrationResponseModelCopyWith(_RegistrationResponseModel value,
          $Res Function(_RegistrationResponseModel) _then) =
      __$RegistrationResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({String detail});
}

/// @nodoc
class __$RegistrationResponseModelCopyWithImpl<$Res>
    implements _$RegistrationResponseModelCopyWith<$Res> {
  __$RegistrationResponseModelCopyWithImpl(this._self, this._then);

  final _RegistrationResponseModel _self;
  final $Res Function(_RegistrationResponseModel) _then;

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? detail = null,
  }) {
    return _then(_RegistrationResponseModel(
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
