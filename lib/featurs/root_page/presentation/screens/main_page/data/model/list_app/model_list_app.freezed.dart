// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_list_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelListApp {
  dynamic get postId;
  dynamic get id;
  dynamic get name;
  dynamic get email;
  dynamic get body;
  List<ListAppImages> get listAppImages;

  /// Create a copy of ModelListApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelListAppCopyWith<ModelListApp> get copyWith =>
      _$ModelListAppCopyWithImpl<ModelListApp>(
          this as ModelListApp, _$identity);

  /// Serializes this ModelListApp to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelListApp &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.listAppImages, listAppImages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'ModelListApp(postId: $postId, id: $id, name: $name, email: $email, body: $body, listAppImages: $listAppImages)';
  }
}

/// @nodoc
abstract mixin class $ModelListAppCopyWith<$Res> {
  factory $ModelListAppCopyWith(
          ModelListApp value, $Res Function(ModelListApp) _then) =
      _$ModelListAppCopyWithImpl;
  @useResult
  $Res call(
      {dynamic postId,
      dynamic id,
      dynamic name,
      dynamic email,
      dynamic body,
      List<ListAppImages> listAppImages});
}

/// @nodoc
class _$ModelListAppCopyWithImpl<$Res> implements $ModelListAppCopyWith<$Res> {
  _$ModelListAppCopyWithImpl(this._self, this._then);

  final ModelListApp _self;
  final $Res Function(ModelListApp) _then;

  /// Create a copy of ModelListApp
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
              as List<ListAppImages>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ModelListApp extends ModelListApp {
  const _ModelListApp(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body,
      final List<ListAppImages> listAppImages = const [
        ListAppImages(
            images:
                "https://50.img.avito.st/image/1/1.3ldEvbaDcr4qFZK0dJrMUlAccLj6Fqi3EBZwvPwAcrTQEkh08x4.YAubJHdEeBWEdk9qUi6MaEzPProaA6RLiiUBDZ9wAtM"),
        ListAppImages(
            images:
                "https://i.pinimg.com/originals/ff/91/21/ff91219fa75ac6d2752e630cd24f5fe3.jpg")
      ]})
      : _listAppImages = listAppImages,
        super._();
  factory _ModelListApp.fromJson(Map<String, dynamic> json) =>
      _$ModelListAppFromJson(json);

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
  final List<ListAppImages> _listAppImages;
  @override
  @JsonKey()
  List<ListAppImages> get listAppImages {
    if (_listAppImages is EqualUnmodifiableListView) return _listAppImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAppImages);
  }

  /// Create a copy of ModelListApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelListAppCopyWith<_ModelListApp> get copyWith =>
      __$ModelListAppCopyWithImpl<_ModelListApp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelListAppToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelListApp &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other._listAppImages, _listAppImages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'ModelListApp(postId: $postId, id: $id, name: $name, email: $email, body: $body, listAppImages: $listAppImages)';
  }
}

/// @nodoc
abstract mixin class _$ModelListAppCopyWith<$Res>
    implements $ModelListAppCopyWith<$Res> {
  factory _$ModelListAppCopyWith(
          _ModelListApp value, $Res Function(_ModelListApp) _then) =
      __$ModelListAppCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic postId,
      dynamic id,
      dynamic name,
      dynamic email,
      dynamic body,
      List<ListAppImages> listAppImages});
}

/// @nodoc
class __$ModelListAppCopyWithImpl<$Res>
    implements _$ModelListAppCopyWith<$Res> {
  __$ModelListAppCopyWithImpl(this._self, this._then);

  final _ModelListApp _self;
  final $Res Function(_ModelListApp) _then;

  /// Create a copy of ModelListApp
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
    return _then(_ModelListApp(
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
              as List<ListAppImages>,
    ));
  }
}

/// @nodoc
mixin _$ListAppImages {
  dynamic get images;

  /// Create a copy of ListAppImages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListAppImagesCopyWith<ListAppImages> get copyWith =>
      _$ListAppImagesCopyWithImpl<ListAppImages>(
          this as ListAppImages, _$identity);

  /// Serializes this ListAppImages to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListAppImages &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'ListAppImages(images: $images)';
  }
}

/// @nodoc
abstract mixin class $ListAppImagesCopyWith<$Res> {
  factory $ListAppImagesCopyWith(
          ListAppImages value, $Res Function(ListAppImages) _then) =
      _$ListAppImagesCopyWithImpl;
  @useResult
  $Res call({dynamic images});
}

/// @nodoc
class _$ListAppImagesCopyWithImpl<$Res>
    implements $ListAppImagesCopyWith<$Res> {
  _$ListAppImagesCopyWithImpl(this._self, this._then);

  final ListAppImages _self;
  final $Res Function(ListAppImages) _then;

  /// Create a copy of ListAppImages
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
@JsonSerializable()
class _ListAppImages extends ListAppImages {
  const _ListAppImages({required this.images}) : super._();
  factory _ListAppImages.fromJson(Map<String, dynamic> json) =>
      _$ListAppImagesFromJson(json);

  @override
  final dynamic images;

  /// Create a copy of ListAppImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListAppImagesCopyWith<_ListAppImages> get copyWith =>
      __$ListAppImagesCopyWithImpl<_ListAppImages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ListAppImagesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListAppImages &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'ListAppImages(images: $images)';
  }
}

/// @nodoc
abstract mixin class _$ListAppImagesCopyWith<$Res>
    implements $ListAppImagesCopyWith<$Res> {
  factory _$ListAppImagesCopyWith(
          _ListAppImages value, $Res Function(_ListAppImages) _then) =
      __$ListAppImagesCopyWithImpl;
  @override
  @useResult
  $Res call({dynamic images});
}

/// @nodoc
class __$ListAppImagesCopyWithImpl<$Res>
    implements _$ListAppImagesCopyWith<$Res> {
  __$ListAppImagesCopyWithImpl(this._self, this._then);

  final _ListAppImages _self;
  final $Res Function(_ListAppImages) _then;

  /// Create a copy of ListAppImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_ListAppImages(
      images: freezed == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
