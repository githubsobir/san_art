// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_main_driver_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarMainDriverEntity {
  String get name;
  String get action;
  String get note;

  /// Create a copy of CarMainDriverEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarMainDriverEntityCopyWith<CarMainDriverEntity> get copyWith =>
      _$CarMainDriverEntityCopyWithImpl<CarMainDriverEntity>(
          this as CarMainDriverEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarMainDriverEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, action, note);

  @override
  String toString() {
    return 'CarMainDriverEntity(name: $name, action: $action, note: $note)';
  }
}

/// @nodoc
abstract mixin class $CarMainDriverEntityCopyWith<$Res> {
  factory $CarMainDriverEntityCopyWith(
          CarMainDriverEntity value, $Res Function(CarMainDriverEntity) _then) =
      _$CarMainDriverEntityCopyWithImpl;
  @useResult
  $Res call({String name, String action, String note});
}

/// @nodoc
class _$CarMainDriverEntityCopyWithImpl<$Res>
    implements $CarMainDriverEntityCopyWith<$Res> {
  _$CarMainDriverEntityCopyWithImpl(this._self, this._then);

  final CarMainDriverEntity _self;
  final $Res Function(CarMainDriverEntity) _then;

  /// Create a copy of CarMainDriverEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? action = null,
    Object? note = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CarMainDriverEntity implements CarMainDriverEntity {
  _CarMainDriverEntity(
      {required this.name, required this.action, required this.note});

  @override
  final String name;
  @override
  final String action;
  @override
  final String note;

  /// Create a copy of CarMainDriverEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarMainDriverEntityCopyWith<_CarMainDriverEntity> get copyWith =>
      __$CarMainDriverEntityCopyWithImpl<_CarMainDriverEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarMainDriverEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, action, note);

  @override
  String toString() {
    return 'CarMainDriverEntity(name: $name, action: $action, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$CarMainDriverEntityCopyWith<$Res>
    implements $CarMainDriverEntityCopyWith<$Res> {
  factory _$CarMainDriverEntityCopyWith(_CarMainDriverEntity value,
          $Res Function(_CarMainDriverEntity) _then) =
      __$CarMainDriverEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String action, String note});
}

/// @nodoc
class __$CarMainDriverEntityCopyWithImpl<$Res>
    implements _$CarMainDriverEntityCopyWith<$Res> {
  __$CarMainDriverEntityCopyWithImpl(this._self, this._then);

  final _CarMainDriverEntity _self;
  final $Res Function(_CarMainDriverEntity) _then;

  /// Create a copy of CarMainDriverEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? action = null,
    Object? note = null,
  }) {
    return _then(_CarMainDriverEntity(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
