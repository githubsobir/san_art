// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FullNameDriverModel {
  String get name;
  String get lName;
  String get sName;

  /// Create a copy of FullNameDriverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FullNameDriverModelCopyWith<FullNameDriverModel> get copyWith =>
      _$FullNameDriverModelCopyWithImpl<FullNameDriverModel>(
          this as FullNameDriverModel, _$identity);

  /// Serializes this FullNameDriverModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FullNameDriverModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.sName, sName) || other.sName == sName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lName, sName);

  @override
  String toString() {
    return 'FullNameDriverModel(name: $name, lName: $lName, sName: $sName)';
  }
}

/// @nodoc
abstract mixin class $FullNameDriverModelCopyWith<$Res> {
  factory $FullNameDriverModelCopyWith(
          FullNameDriverModel value, $Res Function(FullNameDriverModel) _then) =
      _$FullNameDriverModelCopyWithImpl;
  @useResult
  $Res call({String name, String lName, String sName});
}

/// @nodoc
class _$FullNameDriverModelCopyWithImpl<$Res>
    implements $FullNameDriverModelCopyWith<$Res> {
  _$FullNameDriverModelCopyWithImpl(this._self, this._then);

  final FullNameDriverModel _self;
  final $Res Function(FullNameDriverModel) _then;

  /// Create a copy of FullNameDriverModel
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
class _FullNameDriverModel extends FullNameDriverModel {
  _FullNameDriverModel(
      {required this.name, required this.lName, required this.sName})
      : super._();
  factory _FullNameDriverModel.fromJson(Map<String, dynamic> json) =>
      _$FullNameDriverModelFromJson(json);

  @override
  final String name;
  @override
  final String lName;
  @override
  final String sName;

  /// Create a copy of FullNameDriverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FullNameDriverModelCopyWith<_FullNameDriverModel> get copyWith =>
      __$FullNameDriverModelCopyWithImpl<_FullNameDriverModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FullNameDriverModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FullNameDriverModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.sName, sName) || other.sName == sName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lName, sName);

  @override
  String toString() {
    return 'FullNameDriverModel(name: $name, lName: $lName, sName: $sName)';
  }
}

/// @nodoc
abstract mixin class _$FullNameDriverModelCopyWith<$Res>
    implements $FullNameDriverModelCopyWith<$Res> {
  factory _$FullNameDriverModelCopyWith(_FullNameDriverModel value,
          $Res Function(_FullNameDriverModel) _then) =
      __$FullNameDriverModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String lName, String sName});
}

/// @nodoc
class __$FullNameDriverModelCopyWithImpl<$Res>
    implements _$FullNameDriverModelCopyWith<$Res> {
  __$FullNameDriverModelCopyWithImpl(this._self, this._then);

  final _FullNameDriverModel _self;
  final $Res Function(_FullNameDriverModel) _then;

  /// Create a copy of FullNameDriverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? lName = null,
    Object? sName = null,
  }) {
    return _then(_FullNameDriverModel(
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
