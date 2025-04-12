// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelSearch {
  dynamic get postId;
  dynamic get id;
  dynamic get name;
  dynamic get body;
  dynamic get email;

  /// Create a copy of ModelSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelSearchCopyWith<ModelSearch> get copyWith =>
      _$ModelSearchCopyWithImpl<ModelSearch>(this as ModelSearch, _$identity);

  /// Serializes this ModelSearch to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelSearch &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(email));

  @override
  String toString() {
    return 'ModelSearch(postId: $postId, id: $id, name: $name, body: $body, email: $email)';
  }
}

/// @nodoc
abstract mixin class $ModelSearchCopyWith<$Res> {
  factory $ModelSearchCopyWith(
          ModelSearch value, $Res Function(ModelSearch) _then) =
      _$ModelSearchCopyWithImpl;
  @useResult
  $Res call(
      {dynamic postId, dynamic id, dynamic name, dynamic body, dynamic email});
}

/// @nodoc
class _$ModelSearchCopyWithImpl<$Res> implements $ModelSearchCopyWith<$Res> {
  _$ModelSearchCopyWithImpl(this._self, this._then);

  final ModelSearch _self;
  final $Res Function(ModelSearch) _then;

  /// Create a copy of ModelSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? body = freezed,
    Object? email = freezed,
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
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ModelSearch extends ModelSearch {
  _ModelSearch(
      {required this.postId,
      required this.id,
      required this.name,
      required this.body,
      required this.email})
      : super._();
  factory _ModelSearch.fromJson(Map<String, dynamic> json) =>
      _$ModelSearchFromJson(json);

  @override
  final dynamic postId;
  @override
  final dynamic id;
  @override
  final dynamic name;
  @override
  final dynamic body;
  @override
  final dynamic email;

  /// Create a copy of ModelSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelSearchCopyWith<_ModelSearch> get copyWith =>
      __$ModelSearchCopyWithImpl<_ModelSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelSearchToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelSearch &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(email));

  @override
  String toString() {
    return 'ModelSearch(postId: $postId, id: $id, name: $name, body: $body, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$ModelSearchCopyWith<$Res>
    implements $ModelSearchCopyWith<$Res> {
  factory _$ModelSearchCopyWith(
          _ModelSearch value, $Res Function(_ModelSearch) _then) =
      __$ModelSearchCopyWithImpl;
  @override
  @useResult
  $Res call(
      {dynamic postId, dynamic id, dynamic name, dynamic body, dynamic email});
}

/// @nodoc
class __$ModelSearchCopyWithImpl<$Res> implements _$ModelSearchCopyWith<$Res> {
  __$ModelSearchCopyWithImpl(this._self, this._then);

  final _ModelSearch _self;
  final $Res Function(_ModelSearch) _then;

  /// Create a copy of ModelSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? postId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? body = freezed,
    Object? email = freezed,
  }) {
    return _then(_ModelSearch(
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
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
