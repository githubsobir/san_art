// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DateResponseModel {
  String get dataResponse;

  /// Create a copy of DateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateResponseModelCopyWith<DateResponseModel> get copyWith =>
      _$DateResponseModelCopyWithImpl<DateResponseModel>(
          this as DateResponseModel, _$identity);

  /// Serializes this DateResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateResponseModel &&
            (identical(other.dataResponse, dataResponse) ||
                other.dataResponse == dataResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dataResponse);

  @override
  String toString() {
    return 'DateResponseModel(dataResponse: $dataResponse)';
  }
}

/// @nodoc
abstract mixin class $DateResponseModelCopyWith<$Res> {
  factory $DateResponseModelCopyWith(
          DateResponseModel value, $Res Function(DateResponseModel) _then) =
      _$DateResponseModelCopyWithImpl;
  @useResult
  $Res call({String dataResponse});
}

/// @nodoc
class _$DateResponseModelCopyWithImpl<$Res>
    implements $DateResponseModelCopyWith<$Res> {
  _$DateResponseModelCopyWithImpl(this._self, this._then);

  final DateResponseModel _self;
  final $Res Function(DateResponseModel) _then;

  /// Create a copy of DateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataResponse = null,
  }) {
    return _then(_self.copyWith(
      dataResponse: null == dataResponse
          ? _self.dataResponse
          : dataResponse // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DateResponseModel extends DateResponseModel {
  _DateResponseModel({required this.dataResponse}) : super._();
  factory _DateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DateResponseModelFromJson(json);

  @override
  final String dataResponse;

  /// Create a copy of DateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DateResponseModelCopyWith<_DateResponseModel> get copyWith =>
      __$DateResponseModelCopyWithImpl<_DateResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DateResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DateResponseModel &&
            (identical(other.dataResponse, dataResponse) ||
                other.dataResponse == dataResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dataResponse);

  @override
  String toString() {
    return 'DateResponseModel(dataResponse: $dataResponse)';
  }
}

/// @nodoc
abstract mixin class _$DateResponseModelCopyWith<$Res>
    implements $DateResponseModelCopyWith<$Res> {
  factory _$DateResponseModelCopyWith(
          _DateResponseModel value, $Res Function(_DateResponseModel) _then) =
      __$DateResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({String dataResponse});
}

/// @nodoc
class __$DateResponseModelCopyWithImpl<$Res>
    implements _$DateResponseModelCopyWith<$Res> {
  __$DateResponseModelCopyWithImpl(this._self, this._then);

  final _DateResponseModel _self;
  final $Res Function(_DateResponseModel) _then;

  /// Create a copy of DateResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dataResponse = null,
  }) {
    return _then(_DateResponseModel(
      dataResponse: null == dataResponse
          ? _self.dataResponse
          : dataResponse // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
