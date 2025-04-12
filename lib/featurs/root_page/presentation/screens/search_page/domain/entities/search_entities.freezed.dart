// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchEntities {
  dynamic get postId;
  dynamic get id;
  dynamic get name;
  dynamic get email;
  dynamic get body;

  /// Create a copy of SearchEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchEntitiesCopyWith<SearchEntities> get copyWith =>
      _$SearchEntitiesCopyWithImpl<SearchEntities>(
          this as SearchEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchEntities &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(body));

  @override
  String toString() {
    return 'SearchEntities(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
  }
}

/// @nodoc
abstract mixin class $SearchEntitiesCopyWith<$Res> {
  factory $SearchEntitiesCopyWith(
          SearchEntities value, $Res Function(SearchEntities) _then) =
      _$SearchEntitiesCopyWithImpl;
  @useResult
  $Res call(
      {dynamic postId, dynamic id, dynamic name, dynamic email, dynamic body});
}

/// @nodoc
class _$SearchEntitiesCopyWithImpl<$Res>
    implements $SearchEntitiesCopyWith<$Res> {
  _$SearchEntitiesCopyWithImpl(this._self, this._then);

  final SearchEntities _self;
  final $Res Function(SearchEntities) _then;

  /// Create a copy of SearchEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
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
    ));
  }
}

/// @nodoc

class _SearchEntities implements SearchEntities {
  _SearchEntities(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

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

  /// Create a copy of SearchEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchEntitiesCopyWith<_SearchEntities> get copyWith =>
      __$SearchEntitiesCopyWithImpl<_SearchEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchEntities &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(body));

  @override
  String toString() {
    return 'SearchEntities(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
  }
}

/// @nodoc
abstract mixin class _$SearchEntitiesCopyWith<$Res>
    implements $SearchEntitiesCopyWith<$Res> {
  factory _$SearchEntitiesCopyWith(
          _SearchEntities value, $Res Function(_SearchEntities) _then) =
      __$SearchEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic postId, dynamic id, dynamic name, dynamic email, dynamic body});
}

/// @nodoc
class __$SearchEntitiesCopyWithImpl<$Res>
    implements _$SearchEntitiesCopyWith<$Res> {
  __$SearchEntitiesCopyWithImpl(this._self, this._then);

  final _SearchEntities _self;
  final $Res Function(_SearchEntities) _then;

  /// Create a copy of SearchEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? postId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
  }) {
    return _then(_SearchEntities(
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
    ));
  }
}

// dart format on
