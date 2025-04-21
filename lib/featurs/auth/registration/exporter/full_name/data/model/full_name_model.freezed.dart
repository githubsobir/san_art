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
mixin _$FullNameModel {
  String get name;
  String get lName;
  String get sName;

  /// Create a copy of FullNameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FullNameModelCopyWith<FullNameModel> get copyWith =>
      _$FullNameModelCopyWithImpl<FullNameModel>(
          this as FullNameModel, _$identity);

  /// Serializes this FullNameModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FullNameModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.sName, sName) || other.sName == sName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lName, sName);

  @override
  String toString() {
    return 'FullNameModel(name: $name, lName: $lName, sName: $sName)';
  }
}

/// @nodoc
abstract mixin class $FullNameModelCopyWith<$Res> {
  factory $FullNameModelCopyWith(
          FullNameModel value, $Res Function(FullNameModel) _then) =
      _$FullNameModelCopyWithImpl;
  @useResult
  $Res call({String name, String lName, String sName});
}

/// @nodoc
class _$FullNameModelCopyWithImpl<$Res>
    implements $FullNameModelCopyWith<$Res> {
  _$FullNameModelCopyWithImpl(this._self, this._then);

  final FullNameModel _self;
  final $Res Function(FullNameModel) _then;

  /// Create a copy of FullNameModel
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
class _FullNameModel extends FullNameModel {
  _FullNameModel({required this.name, required this.lName, required this.sName})
      : super._();
  factory _FullNameModel.fromJson(Map<String, dynamic> json) =>
      _$FullNameModelFromJson(json);

  @override
  final String name;
  @override
  final String lName;
  @override
  final String sName;

  /// Create a copy of FullNameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FullNameModelCopyWith<_FullNameModel> get copyWith =>
      __$FullNameModelCopyWithImpl<_FullNameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FullNameModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FullNameModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.sName, sName) || other.sName == sName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lName, sName);

  @override
  String toString() {
    return 'FullNameModel(name: $name, lName: $lName, sName: $sName)';
  }
}

/// @nodoc
abstract mixin class _$FullNameModelCopyWith<$Res>
    implements $FullNameModelCopyWith<$Res> {
  factory _$FullNameModelCopyWith(
          _FullNameModel value, $Res Function(_FullNameModel) _then) =
      __$FullNameModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String lName, String sName});
}

/// @nodoc
class __$FullNameModelCopyWithImpl<$Res>
    implements _$FullNameModelCopyWith<$Res> {
  __$FullNameModelCopyWithImpl(this._self, this._then);

  final _FullNameModel _self;
  final $Res Function(_FullNameModel) _then;

  /// Create a copy of FullNameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? lName = null,
    Object? sName = null,
  }) {
    return _then(_FullNameModel(
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
