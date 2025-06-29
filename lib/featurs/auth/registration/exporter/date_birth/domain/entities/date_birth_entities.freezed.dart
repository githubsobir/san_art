// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_birth_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DateBirthEntities {
  bool get success1;
  String get message1;
  String get errorMessage1;

  /// Create a copy of DateBirthEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateBirthEntitiesCopyWith<DateBirthEntities> get copyWith =>
      _$DateBirthEntitiesCopyWithImpl<DateBirthEntities>(
          this as DateBirthEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateBirthEntities &&
            (identical(other.success1, success1) ||
                other.success1 == success1) &&
            (identical(other.message1, message1) ||
                other.message1 == message1) &&
            (identical(other.errorMessage1, errorMessage1) ||
                other.errorMessage1 == errorMessage1));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, success1, message1, errorMessage1);

  @override
  String toString() {
    return 'DateBirthEntities(success1: $success1, message1: $message1, errorMessage1: $errorMessage1)';
  }
}

/// @nodoc
abstract mixin class $DateBirthEntitiesCopyWith<$Res> {
  factory $DateBirthEntitiesCopyWith(
          DateBirthEntities value, $Res Function(DateBirthEntities) _then) =
      _$DateBirthEntitiesCopyWithImpl;
  @useResult
  $Res call({bool success1, String message1, String errorMessage1});
}

/// @nodoc
class _$DateBirthEntitiesCopyWithImpl<$Res>
    implements $DateBirthEntitiesCopyWith<$Res> {
  _$DateBirthEntitiesCopyWithImpl(this._self, this._then);

  final DateBirthEntities _self;
  final $Res Function(DateBirthEntities) _then;

  /// Create a copy of DateBirthEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success1 = null,
    Object? message1 = null,
    Object? errorMessage1 = null,
  }) {
    return _then(_self.copyWith(
      success1: null == success1
          ? _self.success1
          : success1 // ignore: cast_nullable_to_non_nullable
              as bool,
      message1: null == message1
          ? _self.message1
          : message1 // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage1: null == errorMessage1
          ? _self.errorMessage1
          : errorMessage1 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _DateBirthEntities implements DateBirthEntities {
  _DateBirthEntities(
      {required this.success1,
      required this.message1,
      required this.errorMessage1});

  @override
  final bool success1;
  @override
  final String message1;
  @override
  final String errorMessage1;

  /// Create a copy of DateBirthEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DateBirthEntitiesCopyWith<_DateBirthEntities> get copyWith =>
      __$DateBirthEntitiesCopyWithImpl<_DateBirthEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DateBirthEntities &&
            (identical(other.success1, success1) ||
                other.success1 == success1) &&
            (identical(other.message1, message1) ||
                other.message1 == message1) &&
            (identical(other.errorMessage1, errorMessage1) ||
                other.errorMessage1 == errorMessage1));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, success1, message1, errorMessage1);

  @override
  String toString() {
    return 'DateBirthEntities(success1: $success1, message1: $message1, errorMessage1: $errorMessage1)';
  }
}

/// @nodoc
abstract mixin class _$DateBirthEntitiesCopyWith<$Res>
    implements $DateBirthEntitiesCopyWith<$Res> {
  factory _$DateBirthEntitiesCopyWith(
          _DateBirthEntities value, $Res Function(_DateBirthEntities) _then) =
      __$DateBirthEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({bool success1, String message1, String errorMessage1});
}

/// @nodoc
class __$DateBirthEntitiesCopyWithImpl<$Res>
    implements _$DateBirthEntitiesCopyWith<$Res> {
  __$DateBirthEntitiesCopyWithImpl(this._self, this._then);

  final _DateBirthEntities _self;
  final $Res Function(_DateBirthEntities) _then;

  /// Create a copy of DateBirthEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success1 = null,
    Object? message1 = null,
    Object? errorMessage1 = null,
  }) {
    return _then(_DateBirthEntities(
      success1: null == success1
          ? _self.success1
          : success1 // ignore: cast_nullable_to_non_nullable
              as bool,
      message1: null == message1
          ? _self.message1
          : message1 // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage1: null == errorMessage1
          ? _self.errorMessage1
          : errorMessage1 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
