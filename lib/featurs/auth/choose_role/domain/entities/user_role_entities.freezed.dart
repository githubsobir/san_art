// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_role_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRoleEntities {
  int get id;
  String get nameCategory;
  String get textCategory;
  String get imageAssetLink;
  bool get boolActive;
  String get note;

  /// Create a copy of UserRoleEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserRoleEntitiesCopyWith<UserRoleEntities> get copyWith =>
      _$UserRoleEntitiesCopyWithImpl<UserRoleEntities>(
          this as UserRoleEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRoleEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameCategory, nameCategory) ||
                other.nameCategory == nameCategory) &&
            (identical(other.textCategory, textCategory) ||
                other.textCategory == textCategory) &&
            (identical(other.imageAssetLink, imageAssetLink) ||
                other.imageAssetLink == imageAssetLink) &&
            (identical(other.boolActive, boolActive) ||
                other.boolActive == boolActive) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nameCategory, textCategory,
      imageAssetLink, boolActive, note);

  @override
  String toString() {
    return 'UserRoleEntities(id: $id, nameCategory: $nameCategory, textCategory: $textCategory, imageAssetLink: $imageAssetLink, boolActive: $boolActive, note: $note)';
  }
}

/// @nodoc
abstract mixin class $UserRoleEntitiesCopyWith<$Res> {
  factory $UserRoleEntitiesCopyWith(
          UserRoleEntities value, $Res Function(UserRoleEntities) _then) =
      _$UserRoleEntitiesCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String nameCategory,
      String textCategory,
      String imageAssetLink,
      bool boolActive,
      String note});
}

/// @nodoc
class _$UserRoleEntitiesCopyWithImpl<$Res>
    implements $UserRoleEntitiesCopyWith<$Res> {
  _$UserRoleEntitiesCopyWithImpl(this._self, this._then);

  final UserRoleEntities _self;
  final $Res Function(UserRoleEntities) _then;

  /// Create a copy of UserRoleEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameCategory = null,
    Object? textCategory = null,
    Object? imageAssetLink = null,
    Object? boolActive = null,
    Object? note = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameCategory: null == nameCategory
          ? _self.nameCategory
          : nameCategory // ignore: cast_nullable_to_non_nullable
              as String,
      textCategory: null == textCategory
          ? _self.textCategory
          : textCategory // ignore: cast_nullable_to_non_nullable
              as String,
      imageAssetLink: null == imageAssetLink
          ? _self.imageAssetLink
          : imageAssetLink // ignore: cast_nullable_to_non_nullable
              as String,
      boolActive: null == boolActive
          ? _self.boolActive
          : boolActive // ignore: cast_nullable_to_non_nullable
              as bool,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _UserRoleEntities implements UserRoleEntities {
  _UserRoleEntities(
      {required this.id,
      required this.nameCategory,
      required this.textCategory,
      required this.imageAssetLink,
      required this.boolActive,
      required this.note});

  @override
  final int id;
  @override
  final String nameCategory;
  @override
  final String textCategory;
  @override
  final String imageAssetLink;
  @override
  final bool boolActive;
  @override
  final String note;

  /// Create a copy of UserRoleEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserRoleEntitiesCopyWith<_UserRoleEntities> get copyWith =>
      __$UserRoleEntitiesCopyWithImpl<_UserRoleEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRoleEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameCategory, nameCategory) ||
                other.nameCategory == nameCategory) &&
            (identical(other.textCategory, textCategory) ||
                other.textCategory == textCategory) &&
            (identical(other.imageAssetLink, imageAssetLink) ||
                other.imageAssetLink == imageAssetLink) &&
            (identical(other.boolActive, boolActive) ||
                other.boolActive == boolActive) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nameCategory, textCategory,
      imageAssetLink, boolActive, note);

  @override
  String toString() {
    return 'UserRoleEntities(id: $id, nameCategory: $nameCategory, textCategory: $textCategory, imageAssetLink: $imageAssetLink, boolActive: $boolActive, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$UserRoleEntitiesCopyWith<$Res>
    implements $UserRoleEntitiesCopyWith<$Res> {
  factory _$UserRoleEntitiesCopyWith(
          _UserRoleEntities value, $Res Function(_UserRoleEntities) _then) =
      __$UserRoleEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String nameCategory,
      String textCategory,
      String imageAssetLink,
      bool boolActive,
      String note});
}

/// @nodoc
class __$UserRoleEntitiesCopyWithImpl<$Res>
    implements _$UserRoleEntitiesCopyWith<$Res> {
  __$UserRoleEntitiesCopyWithImpl(this._self, this._then);

  final _UserRoleEntities _self;
  final $Res Function(_UserRoleEntities) _then;

  /// Create a copy of UserRoleEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? nameCategory = null,
    Object? textCategory = null,
    Object? imageAssetLink = null,
    Object? boolActive = null,
    Object? note = null,
  }) {
    return _then(_UserRoleEntities(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameCategory: null == nameCategory
          ? _self.nameCategory
          : nameCategory // ignore: cast_nullable_to_non_nullable
              as String,
      textCategory: null == textCategory
          ? _self.textCategory
          : textCategory // ignore: cast_nullable_to_non_nullable
              as String,
      imageAssetLink: null == imageAssetLink
          ? _self.imageAssetLink
          : imageAssetLink // ignore: cast_nullable_to_non_nullable
              as String,
      boolActive: null == boolActive
          ? _self.boolActive
          : boolActive // ignore: cast_nullable_to_non_nullable
              as bool,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
