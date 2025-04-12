// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelMap {
  String get id;
  String get name;
  String get description;
  List<LangLatModel> get langLat;
  List<ImagesModel> get images;

  /// Create a copy of ModelMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelMapCopyWith<ModelMap> get copyWith =>
      _$ModelMapCopyWithImpl<ModelMap>(this as ModelMap, _$identity);

  /// Serializes this ModelMap to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelMap &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.langLat, langLat) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(langLat),
      const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'ModelMap(id: $id, name: $name, description: $description, langLat: $langLat, images: $images)';
  }
}

/// @nodoc
abstract mixin class $ModelMapCopyWith<$Res> {
  factory $ModelMapCopyWith(ModelMap value, $Res Function(ModelMap) _then) =
      _$ModelMapCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<LangLatModel> langLat,
      List<ImagesModel> images});
}

/// @nodoc
class _$ModelMapCopyWithImpl<$Res> implements $ModelMapCopyWith<$Res> {
  _$ModelMapCopyWithImpl(this._self, this._then);

  final ModelMap _self;
  final $Res Function(ModelMap) _then;

  /// Create a copy of ModelMap
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
              as List<LangLatModel>,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ModelMap extends ModelMap {
  _ModelMap(
      {required this.id,
      required this.name,
      required this.description,
      required final List<LangLatModel> langLat,
      required final List<ImagesModel> images})
      : _langLat = langLat,
        _images = images,
        super._();
  factory _ModelMap.fromJson(Map<String, dynamic> json) =>
      _$ModelMapFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final List<LangLatModel> _langLat;
  @override
  List<LangLatModel> get langLat {
    if (_langLat is EqualUnmodifiableListView) return _langLat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_langLat);
  }

  final List<ImagesModel> _images;
  @override
  List<ImagesModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  /// Create a copy of ModelMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelMapCopyWith<_ModelMap> get copyWith =>
      __$ModelMapCopyWithImpl<_ModelMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelMapToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelMap &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._langLat, _langLat) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_langLat),
      const DeepCollectionEquality().hash(_images));

  @override
  String toString() {
    return 'ModelMap(id: $id, name: $name, description: $description, langLat: $langLat, images: $images)';
  }
}

/// @nodoc
abstract mixin class _$ModelMapCopyWith<$Res>
    implements $ModelMapCopyWith<$Res> {
  factory _$ModelMapCopyWith(_ModelMap value, $Res Function(_ModelMap) _then) =
      __$ModelMapCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<LangLatModel> langLat,
      List<ImagesModel> images});
}

/// @nodoc
class __$ModelMapCopyWithImpl<$Res> implements _$ModelMapCopyWith<$Res> {
  __$ModelMapCopyWithImpl(this._self, this._then);

  final _ModelMap _self;
  final $Res Function(_ModelMap) _then;

  /// Create a copy of ModelMap
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
    return _then(_ModelMap(
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
          ? _self._langLat
          : langLat // ignore: cast_nullable_to_non_nullable
              as List<LangLatModel>,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesModel>,
    ));
  }
}

/// @nodoc
mixin _$LangLatModel {
  String get lat;
  String get lang;

  /// Create a copy of LangLatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LangLatModelCopyWith<LangLatModel> get copyWith =>
      _$LangLatModelCopyWithImpl<LangLatModel>(
          this as LangLatModel, _$identity);

  /// Serializes this LangLatModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LangLatModel &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lang);

  @override
  String toString() {
    return 'LangLatModel(lat: $lat, lang: $lang)';
  }
}

/// @nodoc
abstract mixin class $LangLatModelCopyWith<$Res> {
  factory $LangLatModelCopyWith(
          LangLatModel value, $Res Function(LangLatModel) _then) =
      _$LangLatModelCopyWithImpl;
  @useResult
  $Res call({String lat, String lang});
}

/// @nodoc
class _$LangLatModelCopyWithImpl<$Res> implements $LangLatModelCopyWith<$Res> {
  _$LangLatModelCopyWithImpl(this._self, this._then);

  final LangLatModel _self;
  final $Res Function(LangLatModel) _then;

  /// Create a copy of LangLatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lang = null,
  }) {
    return _then(_self.copyWith(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _self.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LangLatModel extends LangLatModel {
  _LangLatModel({required this.lat, required this.lang}) : super._();
  factory _LangLatModel.fromJson(Map<String, dynamic> json) =>
      _$LangLatModelFromJson(json);

  @override
  final String lat;
  @override
  final String lang;

  /// Create a copy of LangLatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LangLatModelCopyWith<_LangLatModel> get copyWith =>
      __$LangLatModelCopyWithImpl<_LangLatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LangLatModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LangLatModel &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lang);

  @override
  String toString() {
    return 'LangLatModel(lat: $lat, lang: $lang)';
  }
}

/// @nodoc
abstract mixin class _$LangLatModelCopyWith<$Res>
    implements $LangLatModelCopyWith<$Res> {
  factory _$LangLatModelCopyWith(
          _LangLatModel value, $Res Function(_LangLatModel) _then) =
      __$LangLatModelCopyWithImpl;
  @override
  @useResult
  $Res call({String lat, String lang});
}

/// @nodoc
class __$LangLatModelCopyWithImpl<$Res>
    implements _$LangLatModelCopyWith<$Res> {
  __$LangLatModelCopyWithImpl(this._self, this._then);

  final _LangLatModel _self;
  final $Res Function(_LangLatModel) _then;

  /// Create a copy of LangLatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = null,
    Object? lang = null,
  }) {
    return _then(_LangLatModel(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _self.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ImagesModel {
  String get id;
  String get url;

  /// Create a copy of ImagesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImagesModelCopyWith<ImagesModel> get copyWith =>
      _$ImagesModelCopyWithImpl<ImagesModel>(this as ImagesModel, _$identity);

  /// Serializes this ImagesModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImagesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @override
  String toString() {
    return 'ImagesModel(id: $id, url: $url)';
  }
}

/// @nodoc
abstract mixin class $ImagesModelCopyWith<$Res> {
  factory $ImagesModelCopyWith(
          ImagesModel value, $Res Function(ImagesModel) _then) =
      _$ImagesModelCopyWithImpl;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$ImagesModelCopyWithImpl<$Res> implements $ImagesModelCopyWith<$Res> {
  _$ImagesModelCopyWithImpl(this._self, this._then);

  final ImagesModel _self;
  final $Res Function(ImagesModel) _then;

  /// Create a copy of ImagesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ImagesModel extends ImagesModel {
  _ImagesModel({required this.id, required this.url}) : super._();
  factory _ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);

  @override
  final String id;
  @override
  final String url;

  /// Create a copy of ImagesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ImagesModelCopyWith<_ImagesModel> get copyWith =>
      __$ImagesModelCopyWithImpl<_ImagesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ImagesModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImagesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @override
  String toString() {
    return 'ImagesModel(id: $id, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$ImagesModelCopyWith<$Res>
    implements $ImagesModelCopyWith<$Res> {
  factory _$ImagesModelCopyWith(
          _ImagesModel value, $Res Function(_ImagesModel) _then) =
      __$ImagesModelCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$ImagesModelCopyWithImpl<$Res> implements _$ImagesModelCopyWith<$Res> {
  __$ImagesModelCopyWithImpl(this._self, this._then);

  final _ImagesModel _self;
  final $Res Function(_ImagesModel) _then;

  /// Create a copy of ImagesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_ImagesModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
