// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationPhoneRegionModel {
  dynamic get id;
  String get name;
  String get code;
  String get mask;

  /// Create a copy of RegistrationPhoneRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistrationPhoneRegionModelCopyWith<RegistrationPhoneRegionModel>
      get copyWith => _$RegistrationPhoneRegionModelCopyWithImpl<
              RegistrationPhoneRegionModel>(
          this as RegistrationPhoneRegionModel, _$identity);

  /// Serializes this RegistrationPhoneRegionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationPhoneRegionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mask, mask) || other.mask == mask));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(id), name, code, mask);

  @override
  String toString() {
    return 'RegistrationPhoneRegionModel(id: $id, name: $name, code: $code, mask: $mask)';
  }
}

/// @nodoc
abstract mixin class $RegistrationPhoneRegionModelCopyWith<$Res> {
  factory $RegistrationPhoneRegionModelCopyWith(
          RegistrationPhoneRegionModel value,
          $Res Function(RegistrationPhoneRegionModel) _then) =
      _$RegistrationPhoneRegionModelCopyWithImpl;
  @useResult
  $Res call({dynamic id, String name, String code, String mask});
}

/// @nodoc
class _$RegistrationPhoneRegionModelCopyWithImpl<$Res>
    implements $RegistrationPhoneRegionModelCopyWith<$Res> {
  _$RegistrationPhoneRegionModelCopyWithImpl(this._self, this._then);

  final RegistrationPhoneRegionModel _self;
  final $Res Function(RegistrationPhoneRegionModel) _then;

  /// Create a copy of RegistrationPhoneRegionModel
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
@JsonSerializable()
class _RegistrationPhoneRegionModel extends RegistrationPhoneRegionModel {
  const _RegistrationPhoneRegionModel(
      {required this.id,
      required this.name,
      required this.code,
      required this.mask})
      : super._();
  factory _RegistrationPhoneRegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationPhoneRegionModelFromJson(json);

  @override
  final dynamic id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String mask;

  /// Create a copy of RegistrationPhoneRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegistrationPhoneRegionModelCopyWith<_RegistrationPhoneRegionModel>
      get copyWith => __$RegistrationPhoneRegionModelCopyWithImpl<
          _RegistrationPhoneRegionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegistrationPhoneRegionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegistrationPhoneRegionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.mask, mask) || other.mask == mask));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(id), name, code, mask);

  @override
  String toString() {
    return 'RegistrationPhoneRegionModel(id: $id, name: $name, code: $code, mask: $mask)';
  }
}

/// @nodoc
abstract mixin class _$RegistrationPhoneRegionModelCopyWith<$Res>
    implements $RegistrationPhoneRegionModelCopyWith<$Res> {
  factory _$RegistrationPhoneRegionModelCopyWith(
          _RegistrationPhoneRegionModel value,
          $Res Function(_RegistrationPhoneRegionModel) _then) =
      __$RegistrationPhoneRegionModelCopyWithImpl;
  @override
  @useResult
  $Res call({dynamic id, String name, String code, String mask});
}

/// @nodoc
class __$RegistrationPhoneRegionModelCopyWithImpl<$Res>
    implements _$RegistrationPhoneRegionModelCopyWith<$Res> {
  __$RegistrationPhoneRegionModelCopyWithImpl(this._self, this._then);

  final _RegistrationPhoneRegionModel _self;
  final $Res Function(_RegistrationPhoneRegionModel) _then;

  /// Create a copy of RegistrationPhoneRegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? code = null,
    Object? mask = null,
  }) {
    return _then(_RegistrationPhoneRegionModel(
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
