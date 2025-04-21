// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MapEntities {
  String get id;
  String get name;
  String get description;
  LangLat1 get langLat;
  List<Images> get images;

  /// Create a copy of MapEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MapEntitiesCopyWith<MapEntities> get copyWith =>
      _$MapEntitiesCopyWithImpl<MapEntities>(this as MapEntities, _$identity);

  /// Serializes this MapEntities to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.langLat, langLat) || other.langLat == langLat) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, langLat,
      const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'MapEntities(id: $id, name: $name, description: $description, langLat: $langLat, images: $images)';
  }
}

/// @nodoc
abstract mixin class $MapEntitiesCopyWith<$Res> {
  factory $MapEntitiesCopyWith(
          MapEntities value, $Res Function(MapEntities) _then) =
      _$MapEntitiesCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      LangLat1 langLat,
      List<Images> images});

  $LangLat1CopyWith<$Res> get langLat;
}

/// @nodoc
class _$MapEntitiesCopyWithImpl<$Res> implements $MapEntitiesCopyWith<$Res> {
  _$MapEntitiesCopyWithImpl(this._self, this._then);

  final MapEntities _self;
  final $Res Function(MapEntities) _then;

  /// Create a copy of MapEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? langLat = null,
    Object? images = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      langLat: null == langLat
          ? _self.langLat
          : langLat // ignore: cast_nullable_to_non_nullable
              as LangLat1,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>,
    ));
  }

  /// Create a copy of MapEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LangLat1CopyWith<$Res> get langLat {
    return $LangLat1CopyWith<$Res>(_self.langLat, (value) {
      return _then(_self.copyWith(langLat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _MapEntities implements MapEntities {
  const _MapEntities(
      {required this.id,
      required this.name,
      required this.description,
      required this.langLat,
      required final List<Images> images})
      : _images = images;
  factory _MapEntities.fromJson(Map<String, dynamic> json) =>
      _$MapEntitiesFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final LangLat1 langLat;
  final List<Images> _images;
  @override
  List<Images> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  /// Create a copy of MapEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MapEntitiesCopyWith<_MapEntities> get copyWith =>
      __$MapEntitiesCopyWithImpl<_MapEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MapEntitiesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.langLat, langLat) || other.langLat == langLat) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, langLat,
      const DeepCollectionEquality().hash(_images));

  @override
  String toString() {
    return 'MapEntities(id: $id, name: $name, description: $description, langLat: $langLat, images: $images)';
  }
}

/// @nodoc
abstract mixin class _$MapEntitiesCopyWith<$Res>
    implements $MapEntitiesCopyWith<$Res> {
  factory _$MapEntitiesCopyWith(
          _MapEntities value, $Res Function(_MapEntities) _then) =
      __$MapEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      LangLat1 langLat,
      List<Images> images});

  @override
  $LangLat1CopyWith<$Res> get langLat;
}

/// @nodoc
class __$MapEntitiesCopyWithImpl<$Res> implements _$MapEntitiesCopyWith<$Res> {
  __$MapEntitiesCopyWithImpl(this._self, this._then);

  final _MapEntities _self;
  final $Res Function(_MapEntities) _then;

  /// Create a copy of MapEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? langLat = null,
    Object? images = null,
  }) {
    return _then(_MapEntities(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      langLat: null == langLat
          ? _self.langLat
          : langLat // ignore: cast_nullable_to_non_nullable
              as LangLat1,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>,
    ));
  }

  /// Create a copy of MapEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LangLat1CopyWith<$Res> get langLat {
    return $LangLat1CopyWith<$Res>(_self.langLat, (value) {
      return _then(_self.copyWith(langLat: value));
    });
  }
}

// dart format on
