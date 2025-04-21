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
mixin _$FullNameEntities {
  String get name;
  String get lName;
  String get sName;

  /// Create a copy of FullNameEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FullNameEntitiesCopyWith<FullNameEntities> get copyWith =>
      _$FullNameEntitiesCopyWithImpl<FullNameEntities>(
          this as FullNameEntities, _$identity);

  /// Serializes this FullNameEntities to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FullNameEntities &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.sName, sName) || other.sName == sName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lName, sName);

  @override
  String toString() {
    return 'FullNameEntities(name: $name, lName: $lName, sName: $sName)';
  }
}

/// @nodoc
abstract mixin class $FullNameEntitiesCopyWith<$Res> {
  factory $FullNameEntitiesCopyWith(
          FullNameEntities value, $Res Function(FullNameEntities) _then) =
      _$FullNameEntitiesCopyWithImpl;
  @useResult
  $Res call({String name, String lName, String sName});
}

/// @nodoc
class _$FullNameEntitiesCopyWithImpl<$Res>
    implements $FullNameEntitiesCopyWith<$Res> {
  _$FullNameEntitiesCopyWithImpl(this._self, this._then);

  final FullNameEntities _self;
  final $Res Function(FullNameEntities) _then;

  /// Create a copy of FullNameEntities
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
class _FullNameEntities implements FullNameEntities {
  const _FullNameEntities(
      {required this.name, required this.lName, required this.sName});
  factory _FullNameEntities.fromJson(Map<String, dynamic> json) =>
      _$FullNameEntitiesFromJson(json);

  @override
  final String name;
  @override
  final String lName;
  @override
  final String sName;

  /// Create a copy of FullNameEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FullNameEntitiesCopyWith<_FullNameEntities> get copyWith =>
      __$FullNameEntitiesCopyWithImpl<_FullNameEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FullNameEntitiesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FullNameEntities &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.sName, sName) || other.sName == sName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lName, sName);

  @override
  String toString() {
    return 'FullNameEntities(name: $name, lName: $lName, sName: $sName)';
  }
}

/// @nodoc
abstract mixin class _$FullNameEntitiesCopyWith<$Res>
    implements $FullNameEntitiesCopyWith<$Res> {
  factory _$FullNameEntitiesCopyWith(
          _FullNameEntities value, $Res Function(_FullNameEntities) _then) =
      __$FullNameEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String lName, String sName});
}

/// @nodoc
class __$FullNameEntitiesCopyWithImpl<$Res>
    implements _$FullNameEntitiesCopyWith<$Res> {
  __$FullNameEntitiesCopyWithImpl(this._self, this._then);

  final _FullNameEntities _self;
  final $Res Function(_FullNameEntities) _then;

  /// Create a copy of FullNameEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? lName = null,
    Object? sName = null,
  }) {
    return _then(_FullNameEntities(
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
