// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_licence_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarLicenceEntities {
  bool get boolGetData;
  String get txtError;

  /// Create a copy of CarLicenceEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarLicenceEntitiesCopyWith<CarLicenceEntities> get copyWith =>
      _$CarLicenceEntitiesCopyWithImpl<CarLicenceEntities>(
          this as CarLicenceEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CarLicenceEntities &&
            (identical(other.boolGetData, boolGetData) ||
                other.boolGetData == boolGetData) &&
            (identical(other.txtError, txtError) ||
                other.txtError == txtError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boolGetData, txtError);

  @override
  String toString() {
    return 'CarLicenceEntities(boolGetData: $boolGetData, txtError: $txtError)';
  }
}

/// @nodoc
abstract mixin class $CarLicenceEntitiesCopyWith<$Res> {
  factory $CarLicenceEntitiesCopyWith(
          CarLicenceEntities value, $Res Function(CarLicenceEntities) _then) =
      _$CarLicenceEntitiesCopyWithImpl;
  @useResult
  $Res call({bool boolGetData, String txtError});
}

/// @nodoc
class _$CarLicenceEntitiesCopyWithImpl<$Res>
    implements $CarLicenceEntitiesCopyWith<$Res> {
  _$CarLicenceEntitiesCopyWithImpl(this._self, this._then);

  final CarLicenceEntities _self;
  final $Res Function(CarLicenceEntities) _then;

  /// Create a copy of CarLicenceEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boolGetData = null,
    Object? txtError = null,
  }) {
    return _then(_self.copyWith(
      boolGetData: null == boolGetData
          ? _self.boolGetData
          : boolGetData // ignore: cast_nullable_to_non_nullable
              as bool,
      txtError: null == txtError
          ? _self.txtError
          : txtError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CarLicenceEntities implements CarLicenceEntities {
  _CarLicenceEntities({required this.boolGetData, required this.txtError});

  @override
  final bool boolGetData;
  @override
  final String txtError;

  /// Create a copy of CarLicenceEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarLicenceEntitiesCopyWith<_CarLicenceEntities> get copyWith =>
      __$CarLicenceEntitiesCopyWithImpl<_CarLicenceEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CarLicenceEntities &&
            (identical(other.boolGetData, boolGetData) ||
                other.boolGetData == boolGetData) &&
            (identical(other.txtError, txtError) ||
                other.txtError == txtError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boolGetData, txtError);

  @override
  String toString() {
    return 'CarLicenceEntities(boolGetData: $boolGetData, txtError: $txtError)';
  }
}

/// @nodoc
abstract mixin class _$CarLicenceEntitiesCopyWith<$Res>
    implements $CarLicenceEntitiesCopyWith<$Res> {
  factory _$CarLicenceEntitiesCopyWith(
          _CarLicenceEntities value, $Res Function(_CarLicenceEntities) _then) =
      __$CarLicenceEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({bool boolGetData, String txtError});
}

/// @nodoc
class __$CarLicenceEntitiesCopyWithImpl<$Res>
    implements _$CarLicenceEntitiesCopyWith<$Res> {
  __$CarLicenceEntitiesCopyWithImpl(this._self, this._then);

  final _CarLicenceEntities _self;
  final $Res Function(_CarLicenceEntities) _then;

  /// Create a copy of CarLicenceEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? boolGetData = null,
    Object? txtError = null,
  }) {
    return _then(_CarLicenceEntities(
      boolGetData: null == boolGetData
          ? _self.boolGetData
          : boolGetData // ignore: cast_nullable_to_non_nullable
              as bool,
      txtError: null == txtError
          ? _self.txtError
          : txtError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
