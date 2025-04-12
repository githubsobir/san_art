// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_app_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListAppEntities {
  dynamic get postId;
  dynamic get id;
  dynamic get name;
  dynamic get email;
  dynamic get body;
  List<ListAppImagesEntities> get listAppImages;

  /// Create a copy of ListAppEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListAppEntitiesCopyWith<ListAppEntities> get copyWith =>
      _$ListAppEntitiesCopyWithImpl<ListAppEntities>(
          this as ListAppEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListAppEntities &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.listAppImages, listAppImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(listAppImages));

  @override
  String toString() {
    return 'ListAppEntities(postId: $postId, id: $id, name: $name, email: $email, body: $body, listAppImages: $listAppImages)';
  }
}

/// @nodoc
abstract mixin class $ListAppEntitiesCopyWith<$Res> {
  factory $ListAppEntitiesCopyWith(
          ListAppEntities value, $Res Function(ListAppEntities) _then) =
      _$ListAppEntitiesCopyWithImpl;
  @useResult
  $Res call(
      {dynamic postId,
      dynamic id,
      dynamic name,
      dynamic email,
      dynamic body,
      List<ListAppImagesEntities> listAppImages});
}

/// @nodoc
class _$ListAppEntitiesCopyWithImpl<$Res>
    implements $ListAppEntitiesCopyWith<$Res> {
  _$ListAppEntitiesCopyWithImpl(this._self, this._then);

  final ListAppEntities _self;
  final $Res Function(ListAppEntities) _then;

  /// Create a copy of ListAppEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
    Object? listAppImages = null,
  }) {
    return _then(_self.copyWith(
      postId: freezed == postId
          ? _self.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
      listAppImages: null == listAppImages
          ? _self.listAppImages
          : listAppImages // ignore: cast_nullable_to_non_nullable
              as List<ListAppImagesEntities>,
    ));
  }
}

/// @nodoc

class _ListAppEntities implements ListAppEntities {
  _ListAppEntities(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body,
      required final List<ListAppImagesEntities> listAppImages})
      : _listAppImages = listAppImages;

  @override
  final dynamic postId;
  @override
  final dynamic id;
  @override
  final dynamic name;
  @override
  final dynamic email;
  @override
  final dynamic body;
  final List<ListAppImagesEntities> _listAppImages;
  @override
  List<ListAppImagesEntities> get listAppImages {
    if (_listAppImages is EqualUnmodifiableListView) return _listAppImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAppImages);
  }

  /// Create a copy of ListAppEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListAppEntitiesCopyWith<_ListAppEntities> get copyWith =>
      __$ListAppEntitiesCopyWithImpl<_ListAppEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListAppEntities &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other._listAppImages, _listAppImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(_listAppImages));

  @override
  String toString() {
    return 'ListAppEntities(postId: $postId, id: $id, name: $name, email: $email, body: $body, listAppImages: $listAppImages)';
  }
}

/// @nodoc
abstract mixin class _$ListAppEntitiesCopyWith<$Res>
    implements $ListAppEntitiesCopyWith<$Res> {
  factory _$ListAppEntitiesCopyWith(
          _ListAppEntities value, $Res Function(_ListAppEntities) _then) =
      __$ListAppEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic postId,
      dynamic id,
      dynamic name,
      dynamic email,
      dynamic body,
      List<ListAppImagesEntities> listAppImages});
}

/// @nodoc
class __$ListAppEntitiesCopyWithImpl<$Res>
    implements _$ListAppEntitiesCopyWith<$Res> {
  __$ListAppEntitiesCopyWithImpl(this._self, this._then);

  final _ListAppEntities _self;
  final $Res Function(_ListAppEntities) _then;

  /// Create a copy of ListAppEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? postId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
    Object? listAppImages = null,
  }) {
    return _then(_ListAppEntities(
      postId: freezed == postId
          ? _self.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
      listAppImages: null == listAppImages
          ? _self._listAppImages
          : listAppImages // ignore: cast_nullable_to_non_nullable
              as List<ListAppImagesEntities>,
    ));
  }
}

/// @nodoc
mixin _$ListAppImagesEntities {
  dynamic get images;

  /// Create a copy of ListAppImagesEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListAppImagesEntitiesCopyWith<ListAppImagesEntities> get copyWith =>
      _$ListAppImagesEntitiesCopyWithImpl<ListAppImagesEntities>(
          this as ListAppImagesEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListAppImagesEntities &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'ListAppImagesEntities(images: $images)';
  }
}

/// @nodoc
abstract mixin class $ListAppImagesEntitiesCopyWith<$Res> {
  factory $ListAppImagesEntitiesCopyWith(ListAppImagesEntities value,
          $Res Function(ListAppImagesEntities) _then) =
      _$ListAppImagesEntitiesCopyWithImpl;
  @useResult
  $Res call({dynamic images});
}

/// @nodoc
class _$ListAppImagesEntitiesCopyWithImpl<$Res>
    implements $ListAppImagesEntitiesCopyWith<$Res> {
  _$ListAppImagesEntitiesCopyWithImpl(this._self, this._then);

  final ListAppImagesEntities _self;
  final $Res Function(ListAppImagesEntities) _then;

  /// Create a copy of ListAppImagesEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_self.copyWith(
      images: freezed == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _ListAppImagesEntities implements ListAppImagesEntities {
  _ListAppImagesEntities({required this.images});

  @override
  final dynamic images;

  /// Create a copy of ListAppImagesEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListAppImagesEntitiesCopyWith<_ListAppImagesEntities> get copyWith =>
      __$ListAppImagesEntitiesCopyWithImpl<_ListAppImagesEntities>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListAppImagesEntities &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'ListAppImagesEntities(images: $images)';
  }
}

/// @nodoc
abstract mixin class _$ListAppImagesEntitiesCopyWith<$Res>
    implements $ListAppImagesEntitiesCopyWith<$Res> {
  factory _$ListAppImagesEntitiesCopyWith(_ListAppImagesEntities value,
          $Res Function(_ListAppImagesEntities) _then) =
      __$ListAppImagesEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call({dynamic images});
}

/// @nodoc
class __$ListAppImagesEntitiesCopyWithImpl<$Res>
    implements _$ListAppImagesEntitiesCopyWith<$Res> {
  __$ListAppImagesEntitiesCopyWithImpl(this._self, this._then);

  final _ListAppImagesEntities _self;
  final $Res Function(_ListAppImagesEntities) _then;

  /// Create a copy of ListAppImagesEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_ListAppImagesEntities(
      images: freezed == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
