// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_name_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FullNameResultModel {
  String get id;
  String get message;

  /// Create a copy of FullNameResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FullNameResultModelCopyWith<FullNameResultModel> get copyWith =>
      _$FullNameResultModelCopyWithImpl<FullNameResultModel>(
          this as FullNameResultModel, _$identity);

  /// Serializes this FullNameResultModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FullNameResultModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, message);

  @override
  String toString() {
    return 'FullNameResultModel(id: $id, message: $message)';
  }
}

/// @nodoc
abstract mixin class $FullNameResultModelCopyWith<$Res> {
  factory $FullNameResultModelCopyWith(
          FullNameResultModel value, $Res Function(FullNameResultModel) _then) =
      _$FullNameResultModelCopyWithImpl;
  @useResult
  $Res call({String id, String message});
}

/// @nodoc
class _$FullNameResultModelCopyWithImpl<$Res>
    implements $FullNameResultModelCopyWith<$Res> {
  _$FullNameResultModelCopyWithImpl(this._self, this._then);

  final FullNameResultModel _self;
  final $Res Function(FullNameResultModel) _then;

  /// Create a copy of FullNameResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FullNameResultModel extends FullNameResultModel {
  _FullNameResultModel({required this.id, required this.message}) : super._();
  factory _FullNameResultModel.fromJson(Map<String, dynamic> json) =>
      _$FullNameResultModelFromJson(json);

  @override
  final String id;
  @override
  final String message;

  /// Create a copy of FullNameResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FullNameResultModelCopyWith<_FullNameResultModel> get copyWith =>
      __$FullNameResultModelCopyWithImpl<_FullNameResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FullNameResultModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FullNameResultModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, message);

  @override
  String toString() {
    return 'FullNameResultModel(id: $id, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FullNameResultModelCopyWith<$Res>
    implements $FullNameResultModelCopyWith<$Res> {
  factory _$FullNameResultModelCopyWith(_FullNameResultModel value,
          $Res Function(_FullNameResultModel) _then) =
      __$FullNameResultModelCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String message});
}

/// @nodoc
class __$FullNameResultModelCopyWithImpl<$Res>
    implements _$FullNameResultModelCopyWith<$Res> {
  __$FullNameResultModelCopyWithImpl(this._self, this._then);

  final _FullNameResultModel _self;
  final $Res Function(_FullNameResultModel) _then;

  /// Create a copy of FullNameResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? message = null,
  }) {
    return _then(_FullNameResultModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
