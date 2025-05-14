// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_region_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationPhoneRegionEntity {
  dynamic get id;
  String get name;
  String get code;
  String get mask;

  /// Create a copy of RegistrationPhoneRegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistrationPhoneRegionEntityCopyWith<RegistrationPhoneRegionEntity>
      get copyWith => _$RegistrationPhoneRegionEntityCopyWithImpl<
              RegistrationPhoneRegionEntity>(
          this as RegistrationPhoneRegionEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationPhoneRegionEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mask, mask) || other.mask == mask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(id), name, code, mask);

  @override
  String toString() {
    return 'RegistrationPhoneRegionEntity(id: $id, name: $name, code: $code, mask: $mask)';
  }
}

/// @nodoc
abstract mixin class $RegistrationPhoneRegionEntityCopyWith<$Res> {
  factory $RegistrationPhoneRegionEntityCopyWith(
          RegistrationPhoneRegionEntity value,
          $Res Function(RegistrationPhoneRegionEntity) _then) =
      _$RegistrationPhoneRegionEntityCopyWithImpl;
  @useResult
  $Res call({dynamic id, String name, String code, String mask});
}

/// @nodoc
class _$RegistrationPhoneRegionEntityCopyWithImpl<$Res>
    implements $RegistrationPhoneRegionEntityCopyWith<$Res> {
  _$RegistrationPhoneRegionEntityCopyWithImpl(this._self, this._then);

  final RegistrationPhoneRegionEntity _self;
  final $Res Function(RegistrationPhoneRegionEntity) _then;

  /// Create a copy of RegistrationPhoneRegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? code = null,
    Object? mask = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      mask: null == mask
          ? _self.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _RegistrationPhoneRegionEntity implements RegistrationPhoneRegionEntity {
  const _RegistrationPhoneRegionEntity(
      {required this.id,
      required this.name,
      required this.code,
      required this.mask});

  @override
  final dynamic id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String mask;

  /// Create a copy of RegistrationPhoneRegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegistrationPhoneRegionEntityCopyWith<_RegistrationPhoneRegionEntity>
      get copyWith => __$RegistrationPhoneRegionEntityCopyWithImpl<
          _RegistrationPhoneRegionEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegistrationPhoneRegionEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mask, mask) || other.mask == mask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(id), name, code, mask);

  @override
  String toString() {
    return 'RegistrationPhoneRegionEntity(id: $id, name: $name, code: $code, mask: $mask)';
  }
}

/// @nodoc
abstract mixin class _$RegistrationPhoneRegionEntityCopyWith<$Res>
    implements $RegistrationPhoneRegionEntityCopyWith<$Res> {
  factory _$RegistrationPhoneRegionEntityCopyWith(
          _RegistrationPhoneRegionEntity value,
          $Res Function(_RegistrationPhoneRegionEntity) _then) =
      __$RegistrationPhoneRegionEntityCopyWithImpl;
  @override
  @useResult
  $Res call({dynamic id, String name, String code, String mask});
}

/// @nodoc
class __$RegistrationPhoneRegionEntityCopyWithImpl<$Res>
    implements _$RegistrationPhoneRegionEntityCopyWith<$Res> {
  __$RegistrationPhoneRegionEntityCopyWithImpl(this._self, this._then);

  final _RegistrationPhoneRegionEntity _self;
  final $Res Function(_RegistrationPhoneRegionEntity) _then;

  /// Create a copy of RegistrationPhoneRegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? code = null,
    Object? mask = null,
  }) {
    return _then(_RegistrationPhoneRegionEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      mask: null == mask
          ? _self.mask
          : mask // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
