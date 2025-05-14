// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_name_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FullNameDriverEntities {
  String get name;
  String get lName;
  String get sName;

  /// Create a copy of FullNameDriverEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FullNameDriverEntitiesCopyWith<FullNameDriverEntities> get copyWith =>
      _$FullNameDriverEntitiesCopyWithImpl<FullNameDriverEntities>(
          this as FullNameDriverEntities, _$identity);

  /// Serializes this FullNameDriverEntities to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FullNameDriverEntities &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.sName, sName) || other.sName == sName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lName, sName);

  @override
  String toString() {
    return 'FullNameDriverEntities(name: $name, lName: $lName, sName: $sName)';
  }
}

/// @nodoc
abstract mixin class $FullNameDriverEntitiesCopyWith<$Res> {
  factory $FullNameDriverEntitiesCopyWith(FullNameDriverEntities value,
          $Res Function(FullNameDriverEntities) _then) =
      _$FullNameDriverEntitiesCopyWithImpl;
  @useResult
  $Res call({String name, String lName, String sName});
}

/// @nodoc
class _$FullNameDriverEntitiesCopyWithImpl<$Res>
    implements $FullNameDriverEntitiesCopyWith<$Res> {
  _$FullNameDriverEntitiesCopyWithImpl(this._self, this._then);

  final FullNameDriverEntities _self;
  final $Res Function(FullNameDriverEntities) _then;

  /// Create a copy of FullNameDriverEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lName = null,
    Object? sName = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lName: null == lName
          ? _self.lName
          : lName // ignore: cast_nullable_to_non_nullable
              as String,
      sName: null == sName
          ? _self.sName
          : sName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FullNameDriverEntities implements FullNameDriverEntities {
  const _FullNameDriverEntities(
      {required this.name, required this.lName, required this.sName});
  factory _FullNameDriverEntities.fromJson(Map<String, dynamic> json) =>
      _$FullNameDriverEntitiesFromJson(json);

  @override
  final String name;
  @override
  final String lName;
  @override
  final String sName;

  /// Create a copy of FullNameDriverEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FullNameDriverEntitiesCopyWith<_FullNameDriverEntities> get copyWith =>
      __$FullNameDriverEntitiesCopyWithImpl<_FullNameDriverEntities>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FullNameDriverEntitiesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FullNameDriverEntities &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.sName, sName) || other.sName == sName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lName, sName);

  @override
  String toString() {
    return 'FullNameDriverEntities(name: $name, lName: $lName, sName: $sName)';
  }
}

/// @nodoc
abstract mixin class _$FullNameDriverEntitiesCopyWith<$Res>
    implements $FullNameDriverEntitiesCopyWith<$Res> {
  factory _$FullNameDriverEntitiesCopyWith(_FullNameDriverEntities value,
          $Res Function(_FullNameDriverEntities) _then) =
      __$FullNameDriverEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String lName, String sName});
}

/// @nodoc
class __$FullNameDriverEntitiesCopyWithImpl<$Res>
    implements _$FullNameDriverEntitiesCopyWith<$Res> {
  __$FullNameDriverEntitiesCopyWithImpl(this._self, this._then);

  final _FullNameDriverEntities _self;
  final $Res Function(_FullNameDriverEntities) _then;

  /// Create a copy of FullNameDriverEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? lName = null,
    Object? sName = null,
  }) {
    return _then(_FullNameDriverEntities(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lName: null == lName
          ? _self.lName
          : lName // ignore: cast_nullable_to_non_nullable
              as String,
      sName: null == sName
          ? _self.sName
          : sName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
