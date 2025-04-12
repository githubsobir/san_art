// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Images {
  String get url;
  String get id;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImagesCopyWith<Images> get copyWith =>
      _$ImagesCopyWithImpl<Images>(this as Images, _$identity);

  /// Serializes this Images to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Images &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, id);

  @override
  String toString() {
    return 'Images(url: $url, id: $id)';
  }
}

/// @nodoc
abstract mixin class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) _then) =
      _$ImagesCopyWithImpl;
  @useResult
  $Res call({String url, String id});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res> implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._self, this._then);

  final Images _self;
  final $Res Function(Images) _then;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Images implements Images {
  const _Images({required this.url, required this.id});
  factory _Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  @override
  final String url;
  @override
  final String id;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ImagesCopyWith<_Images> get copyWith =>
      __$ImagesCopyWithImpl<_Images>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ImagesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Images &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, id);

  @override
  String toString() {
    return 'Images(url: $url, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$ImagesCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$ImagesCopyWith(_Images value, $Res Function(_Images) _then) =
      __$ImagesCopyWithImpl;
  @override
  @useResult
  $Res call({String url, String id});
}

/// @nodoc
class __$ImagesCopyWithImpl<$Res> implements _$ImagesCopyWith<$Res> {
  __$ImagesCopyWithImpl(this._self, this._then);

  final _Images _self;
  final $Res Function(_Images) _then;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? id = null,
  }) {
    return _then(_Images(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
