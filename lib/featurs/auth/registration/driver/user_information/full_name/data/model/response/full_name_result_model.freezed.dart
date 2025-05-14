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
mixin _$FullNameDriverResultModel {
  String get id;
  String get message;

  /// Create a copy of FullNameDriverResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FullNameDriverResultModelCopyWith<FullNameDriverResultModel> get copyWith =>
      _$FullNameDriverResultModelCopyWithImpl<FullNameDriverResultModel>(
          this as FullNameDriverResultModel, _$identity);

  /// Serializes this FullNameDriverResultModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FullNameDriverResultModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, message);

  @override
  String toString() {
    return 'FullNameDriverResultModel(id: $id, message: $message)';
  }
}

/// @nodoc
abstract mixin class $FullNameDriverResultModelCopyWith<$Res> {
  factory $FullNameDriverResultModelCopyWith(FullNameDriverResultModel value,
          $Res Function(FullNameDriverResultModel) _then) =
      _$FullNameDriverResultModelCopyWithImpl;
  @useResult
  $Res call({String id, String message});
}

/// @nodoc
class _$FullNameDriverResultModelCopyWithImpl<$Res>
    implements $FullNameDriverResultModelCopyWith<$Res> {
  _$FullNameDriverResultModelCopyWithImpl(this._self, this._then);

  final FullNameDriverResultModel _self;
  final $Res Function(FullNameDriverResultModel) _then;

  /// Create a copy of FullNameDriverResultModel
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
class _FullNameDriverResultModel extends FullNameDriverResultModel {
  _FullNameDriverResultModel({required this.id, required this.message})
      : super._();
  factory _FullNameDriverResultModel.fromJson(Map<String, dynamic> json) =>
      _$FullNameDriverResultModelFromJson(json);

  @override
  final String id;
  @override
  final String message;

  /// Create a copy of FullNameDriverResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FullNameDriverResultModelCopyWith<_FullNameDriverResultModel>
      get copyWith =>
          __$FullNameDriverResultModelCopyWithImpl<_FullNameDriverResultModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FullNameDriverResultModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FullNameDriverResultModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, message);

  @override
  String toString() {
    return 'FullNameDriverResultModel(id: $id, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FullNameDriverResultModelCopyWith<$Res>
    implements $FullNameDriverResultModelCopyWith<$Res> {
  factory _$FullNameDriverResultModelCopyWith(_FullNameDriverResultModel value,
          $Res Function(_FullNameDriverResultModel) _then) =
      __$FullNameDriverResultModelCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String message});
}

/// @nodoc
class __$FullNameDriverResultModelCopyWithImpl<$Res>
    implements _$FullNameDriverResultModelCopyWith<$Res> {
  __$FullNameDriverResultModelCopyWithImpl(this._self, this._then);

  final _FullNameDriverResultModel _self;
  final $Res Function(_FullNameDriverResultModel) _then;

  /// Create a copy of FullNameDriverResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? message = null,
  }) {
    return _then(_FullNameDriverResultModel(
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
