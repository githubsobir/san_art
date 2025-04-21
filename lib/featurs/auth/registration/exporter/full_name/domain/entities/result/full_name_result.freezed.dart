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
mixin _$FullNameResult {
  String get id;
  String get message;

  /// Create a copy of FullNameResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FullNameResultCopyWith<FullNameResult> get copyWith =>
      _$FullNameResultCopyWithImpl<FullNameResult>(
          this as FullNameResult, _$identity);

  /// Serializes this FullNameResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FullNameResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, message);

  @override
  String toString() {
    return 'FullNameResult(id: $id, message: $message)';
  }
}

/// @nodoc
abstract mixin class $FullNameResultCopyWith<$Res> {
  factory $FullNameResultCopyWith(
          FullNameResult value, $Res Function(FullNameResult) _then) =
      _$FullNameResultCopyWithImpl;
  @useResult
  $Res call({String id, String message});
}

/// @nodoc
class _$FullNameResultCopyWithImpl<$Res>
    implements $FullNameResultCopyWith<$Res> {
  _$FullNameResultCopyWithImpl(this._self, this._then);

  final FullNameResult _self;
  final $Res Function(FullNameResult) _then;

  /// Create a copy of FullNameResult
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
class _FullNameResult implements FullNameResult {
  _FullNameResult({required this.id, required this.message});
  factory _FullNameResult.fromJson(Map<String, dynamic> json) =>
      _$FullNameResultFromJson(json);

  @override
  final String id;
  @override
  final String message;

  /// Create a copy of FullNameResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FullNameResultCopyWith<_FullNameResult> get copyWith =>
      __$FullNameResultCopyWithImpl<_FullNameResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FullNameResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FullNameResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, message);

  @override
  String toString() {
    return 'FullNameResult(id: $id, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FullNameResultCopyWith<$Res>
    implements $FullNameResultCopyWith<$Res> {
  factory _$FullNameResultCopyWith(
          _FullNameResult value, $Res Function(_FullNameResult) _then) =
      __$FullNameResultCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String message});
}

/// @nodoc
class __$FullNameResultCopyWithImpl<$Res>
    implements _$FullNameResultCopyWith<$Res> {
  __$FullNameResultCopyWithImpl(this._self, this._then);

  final _FullNameResult _self;
  final $Res Function(_FullNameResult) _then;

  /// Create a copy of FullNameResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? message = null,
  }) {
    return _then(_FullNameResult(
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
