// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lat_lang_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LangLat {
  String get lat;
  String get lang;

  /// Create a copy of LangLat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LangLatCopyWith<LangLat> get copyWith =>
      _$LangLatCopyWithImpl<LangLat>(this as LangLat, _$identity);

  /// Serializes this LangLat to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LangLat &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lang);

  @override
  String toString() {
    return 'LangLat(lat: $lat, lang: $lang)';
  }
}

/// @nodoc
abstract mixin class $LangLatCopyWith<$Res> {
  factory $LangLatCopyWith(LangLat value, $Res Function(LangLat) _then) =
      _$LangLatCopyWithImpl;
  @useResult
  $Res call({String lat, String lang});
}

/// @nodoc
class _$LangLatCopyWithImpl<$Res> implements $LangLatCopyWith<$Res> {
  _$LangLatCopyWithImpl(this._self, this._then);

  final LangLat _self;
  final $Res Function(LangLat) _then;

  /// Create a copy of LangLat
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
class _LangLat implements LangLat {
  const _LangLat({required this.lat, required this.lang});
  factory _LangLat.fromJson(Map<String, dynamic> json) =>
      _$LangLatFromJson(json);

  @override
  final String lat;
  @override
  final String lang;

  /// Create a copy of LangLat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LangLatCopyWith<_LangLat> get copyWith =>
      __$LangLatCopyWithImpl<_LangLat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LangLatToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LangLat &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lang);

  @override
  String toString() {
    return 'LangLat(lat: $lat, lang: $lang)';
  }
}

/// @nodoc
abstract mixin class _$LangLatCopyWith<$Res> implements $LangLatCopyWith<$Res> {
  factory _$LangLatCopyWith(_LangLat value, $Res Function(_LangLat) _then) =
      __$LangLatCopyWithImpl;
  @override
  @useResult
  $Res call({String lat, String lang});
}

/// @nodoc
class __$LangLatCopyWithImpl<$Res> implements _$LangLatCopyWith<$Res> {
  __$LangLatCopyWithImpl(this._self, this._then);

  final _LangLat _self;
  final $Res Function(_LangLat) _then;

  /// Create a copy of LangLat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = null,
    Object? lang = null,
  }) {
    return _then(_LangLat(
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

// dart format on
