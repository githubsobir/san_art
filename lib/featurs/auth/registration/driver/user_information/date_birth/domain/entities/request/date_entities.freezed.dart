// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DateResponseEntities {
  String get date;

  /// Create a copy of DateResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DateResponseEntitiesCopyWith<DateResponseEntities> get copyWith =>
      _$DateResponseEntitiesCopyWithImpl<DateResponseEntities>(
          this as DateResponseEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DateResponseEntities &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @override
  String toString() {
    return 'DateResponseEntities(date: $date)';
  }
}

/// @nodoc
abstract mixin class $DateResponseEntitiesCopyWith<$Res> {
  factory $DateResponseEntitiesCopyWith(DateResponseEntities value,
          $Res Function(DateResponseEntities) _then) =
      _$DateResponseEntitiesCopyWithImpl;
  @useResult
  $Res call({String date});
}

/// @nodoc
class _$DateResponseEntitiesCopyWithImpl<$Res>
    implements $DateResponseEntitiesCopyWith<$Res> {
  _$DateResponseEntitiesCopyWithImpl(this._self, this._then);

  final DateResponseEntities _self;
  final $Res Function(DateResponseEntities) _then;

  /// Create a copy of DateResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _DateResponseEntities implements DateResponseEntities {
  _DateResponseEntities({required this.date});

  @override
  final String date;

  /// Create a copy of DateResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DateResponseEntitiesCopyWith<_DateResponseEntities> get copyWith =>
      __$DateResponseEntitiesCopyWithImpl<_DateResponseEntities>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DateResponseEntities &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @override
  String toString() {
    return 'DateResponseEntities(date: $date)';
  }
}

/// @nodoc
abstract mixin class _$DateResponseEntitiesCopyWith<$Res>
    implements $DateResponseEntitiesCopyWith<$Res> {
  factory _$DateResponseEntitiesCopyWith(_DateResponseEntities value,
          $Res Function(_DateResponseEntities) _then) =
      __$DateResponseEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$DateResponseEntitiesCopyWithImpl<$Res>
    implements _$DateResponseEntitiesCopyWith<$Res> {
  __$DateResponseEntitiesCopyWithImpl(this._self, this._then);

  final _DateResponseEntities _self;
  final $Res Function(_DateResponseEntities) _then;

  /// Create a copy of DateResponseEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
  }) {
    return _then(_DateResponseEntities(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
