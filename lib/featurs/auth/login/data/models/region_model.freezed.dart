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
mixin _$RegionModel {
  dynamic get id;
  String get name;
  dynamic get parent;
  bool get status;

  /// Create a copy of RegionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegionModelCopyWith<RegionModel> get copyWith =>
      _$RegionModelCopyWithImpl<RegionModel>(this as RegionModel, _$identity);

  /// Serializes this RegionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.parent, parent) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      name,
      const DeepCollectionEquality().hash(parent),
      status);

  @override
  String toString() {
    return 'RegionModel(id: $id, name: $name, parent: $parent, status: $status)';
  }
}

/// @nodoc
abstract mixin class $RegionModelCopyWith<$Res> {
  factory $RegionModelCopyWith(
          RegionModel value, $Res Function(RegionModel) _then) =
      _$RegionModelCopyWithImpl;
  @useResult
  $Res call({dynamic id, String name, dynamic parent, bool status});
}

/// @nodoc
class _$RegionModelCopyWithImpl<$Res> implements $RegionModelCopyWith<$Res> {
  _$RegionModelCopyWithImpl(this._self, this._then);

  final RegionModel _self;
  final $Res Function(RegionModel) _then;

  /// Create a copy of RegionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? parent = freezed,
    Object? status = null,
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
      parent: freezed == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RegionModel extends RegionModel {
  const _RegionModel(
      {required this.id, required this.name, this.parent, required this.status})
      : super._();
  factory _RegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegionModelFromJson(json);

  @override
  final dynamic id;
  @override
  final String name;
  @override
  final dynamic parent;
  @override
  final bool status;

  /// Create a copy of RegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegionModelCopyWith<_RegionModel> get copyWith =>
      __$RegionModelCopyWithImpl<_RegionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.parent, parent) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      name,
      const DeepCollectionEquality().hash(parent),
      status);

  @override
  String toString() {
    return 'RegionModel(id: $id, name: $name, parent: $parent, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$RegionModelCopyWith<$Res>
    implements $RegionModelCopyWith<$Res> {
  factory _$RegionModelCopyWith(
          _RegionModel value, $Res Function(_RegionModel) _then) =
      __$RegionModelCopyWithImpl;
  @override
  @useResult
  $Res call({dynamic id, String name, dynamic parent, bool status});
}

/// @nodoc
class __$RegionModelCopyWithImpl<$Res> implements _$RegionModelCopyWith<$Res> {
  __$RegionModelCopyWithImpl(this._self, this._then);

  final _RegionModel _self;
  final $Res Function(_RegionModel) _then;

  /// Create a copy of RegionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? parent = freezed,
    Object? status = null,
  }) {
    return _then(_RegionModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _self.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
