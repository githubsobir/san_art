// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassportStateEntities {
  int get id;
  String get type;
  List<String> get images;

  /// Create a copy of PassportStateEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportStateEntitiesCopyWith<PassportStateEntities> get copyWith =>
      _$PassportStateEntitiesCopyWithImpl<PassportStateEntities>(
          this as PassportStateEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassportStateEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'PassportStateEntities(id: $id, type: $type, images: $images)';
  }
}

/// @nodoc
abstract mixin class $PassportStateEntitiesCopyWith<$Res> {
  factory $PassportStateEntitiesCopyWith(PassportStateEntities value,
          $Res Function(PassportStateEntities) _then) =
      _$PassportStateEntitiesCopyWithImpl;
  @useResult
  $Res call({int id, String type, List<String> images});
}

/// @nodoc
class _$PassportStateEntitiesCopyWithImpl<$Res>
    implements $PassportStateEntitiesCopyWith<$Res> {
  _$PassportStateEntitiesCopyWithImpl(this._self, this._then);

  final PassportStateEntities _self;
  final $Res Function(PassportStateEntities) _then;

  /// Create a copy of PassportStateEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? images = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _PassportStateEntities implements PassportStateEntities {
  const _PassportStateEntities(
      {required this.id,
      required this.type,
      required final List<String> images})
      : _images = images;

  @override
  final int id;
  @override
  final String type;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  /// Create a copy of PassportStateEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PassportStateEntitiesCopyWith<_PassportStateEntities> get copyWith =>
      __$PassportStateEntitiesCopyWithImpl<_PassportStateEntities>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PassportStateEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, const DeepCollectionEquality().hash(_images));

  @override
  String toString() {
    return 'PassportStateEntities(id: $id, type: $type, images: $images)';
  }
}

/// @nodoc
abstract mixin class _$PassportStateEntitiesCopyWith<$Res>
    implements $PassportStateEntitiesCopyWith<$Res> {
  factory _$PassportStateEntitiesCopyWith(_PassportStateEntities value,
          $Res Function(_PassportStateEntities) _then) =
      __$PassportStateEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String type, List<String> images});
}

/// @nodoc
class __$PassportStateEntitiesCopyWithImpl<$Res>
    implements _$PassportStateEntitiesCopyWith<$Res> {
  __$PassportStateEntitiesCopyWithImpl(this._self, this._then);

  final _PassportStateEntities _self;
  final $Res Function(_PassportStateEntities) _then;

  /// Create a copy of PassportStateEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? images = null,
  }) {
    return _then(_PassportStateEntities(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
