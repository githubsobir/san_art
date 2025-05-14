// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_name_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FullNameDriverResult {
  String get id;
  String get message;

  /// Create a copy of FullNameDriverResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FullNameDriverResultCopyWith<FullNameDriverResult> get copyWith =>
      _$FullNameDriverResultCopyWithImpl<FullNameDriverResult>(
          this as FullNameDriverResult, _$identity);

  /// Serializes this FullNameDriverResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FullNameDriverResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, message);

  @override
  String toString() {
    return 'FullNameDriverResult(id: $id, message: $message)';
  }
}

/// @nodoc
abstract mixin class $FullNameDriverResultCopyWith<$Res> {
  factory $FullNameDriverResultCopyWith(FullNameDriverResult value,
          $Res Function(FullNameDriverResult) _then) =
      _$FullNameDriverResultCopyWithImpl;
  @useResult
  $Res call({String id, String message});
}

/// @nodoc
class _$FullNameDriverResultCopyWithImpl<$Res>
    implements $FullNameDriverResultCopyWith<$Res> {
  _$FullNameDriverResultCopyWithImpl(this._self, this._then);

  final FullNameDriverResult _self;
  final $Res Function(FullNameDriverResult) _then;

  /// Create a copy of FullNameDriverResult
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
class _FullNameDriverResult implements FullNameDriverResult {
  _FullNameDriverResult({required this.id, required this.message});
  factory _FullNameDriverResult.fromJson(Map<String, dynamic> json) =>
      _$FullNameDriverResultFromJson(json);

  @override
  final String id;
  @override
  final String message;

  /// Create a copy of FullNameDriverResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FullNameDriverResultCopyWith<_FullNameDriverResult> get copyWith =>
      __$FullNameDriverResultCopyWithImpl<_FullNameDriverResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FullNameDriverResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FullNameDriverResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, message);

  @override
  String toString() {
    return 'FullNameDriverResult(id: $id, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FullNameDriverResultCopyWith<$Res>
    implements $FullNameDriverResultCopyWith<$Res> {
  factory _$FullNameDriverResultCopyWith(_FullNameDriverResult value,
          $Res Function(_FullNameDriverResult) _then) =
      __$FullNameDriverResultCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String message});
}

/// @nodoc
class __$FullNameDriverResultCopyWithImpl<$Res>
    implements _$FullNameDriverResultCopyWith<$Res> {
  __$FullNameDriverResultCopyWithImpl(this._self, this._then);

  final _FullNameDriverResult _self;
  final $Res Function(_FullNameDriverResult) _then;

  /// Create a copy of FullNameDriverResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? message = null,
  }) {
    return _then(_FullNameDriverResult(
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
