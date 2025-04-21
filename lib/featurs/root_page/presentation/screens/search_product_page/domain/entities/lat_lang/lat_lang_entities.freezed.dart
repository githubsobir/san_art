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
mixin _$LangLat1 {
  String get lat;
  String get lang;

  /// Create a copy of LangLat1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LangLat1CopyWith<LangLat1> get copyWith =>
      _$LangLat1CopyWithImpl<LangLat1>(this as LangLat1, _$identity);

  /// Serializes this LangLat1 to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LangLat1 &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lang);

  @override
  String toString() {
    return 'LangLat1(lat: $lat, lang: $lang)';
  }
}

/// @nodoc
abstract mixin class $LangLat1CopyWith<$Res> {
  factory $LangLat1CopyWith(LangLat1 value, $Res Function(LangLat1) _then) =
      _$LangLat1CopyWithImpl;
  @useResult
  $Res call({String lat, String lang});
}

/// @nodoc
class _$LangLat1CopyWithImpl<$Res> implements $LangLat1CopyWith<$Res> {
  _$LangLat1CopyWithImpl(this._self, this._then);

  final LangLat1 _self;
  final $Res Function(LangLat1) _then;

  /// Create a copy of LangLat1
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
class _LangLat1 implements LangLat1 {
  const _LangLat1({required this.lat, required this.lang});
  factory _LangLat1.fromJson(Map<String, dynamic> json) =>
      _$LangLat1FromJson(json);

  @override
  final String lat;
  @override
  final String lang;

  /// Create a copy of LangLat1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LangLat1CopyWith<_LangLat1> get copyWith =>
      __$LangLat1CopyWithImpl<_LangLat1>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LangLat1ToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LangLat1 &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lang);

  @override
  String toString() {
    return 'LangLat1(lat: $lat, lang: $lang)';
  }
}

/// @nodoc
abstract mixin class _$LangLat1CopyWith<$Res>
    implements $LangLat1CopyWith<$Res> {
  factory _$LangLat1CopyWith(_LangLat1 value, $Res Function(_LangLat1) _then) =
      __$LangLat1CopyWithImpl;
  @override
  @useResult
  $Res call({String lat, String lang});
}

/// @nodoc
class __$LangLat1CopyWithImpl<$Res> implements _$LangLat1CopyWith<$Res> {
  __$LangLat1CopyWithImpl(this._self, this._then);

  final _LangLat1 _self;
  final $Res Function(_LangLat1) _then;

  /// Create a copy of LangLat1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = null,
    Object? lang = null,
  }) {
    return _then(_LangLat1(
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
