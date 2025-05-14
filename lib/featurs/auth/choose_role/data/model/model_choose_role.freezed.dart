// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_choose_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelChooseRole {
  int get id;
  String get valueCategory;
  String get textCategory;
  String get imageAssetLink;
  bool get boolActive;
  String get note;

  /// Create a copy of ModelChooseRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelChooseRoleCopyWith<ModelChooseRole> get copyWith =>
      _$ModelChooseRoleCopyWithImpl<ModelChooseRole>(
          this as ModelChooseRole, _$identity);

  /// Serializes this ModelChooseRole to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelChooseRole &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.valueCategory, valueCategory) ||
                other.valueCategory == valueCategory) &&
            (identical(other.textCategory, textCategory) ||
                other.textCategory == textCategory) &&
            (identical(other.imageAssetLink, imageAssetLink) ||
                other.imageAssetLink == imageAssetLink) &&
            (identical(other.boolActive, boolActive) ||
                other.boolActive == boolActive) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, valueCategory, textCategory,
      imageAssetLink, boolActive, note);

  @override
  String toString() {
    return 'ModelChooseRole(id: $id, valueCategory: $valueCategory, textCategory: $textCategory, imageAssetLink: $imageAssetLink, boolActive: $boolActive, note: $note)';
  }
}

/// @nodoc
abstract mixin class $ModelChooseRoleCopyWith<$Res> {
  factory $ModelChooseRoleCopyWith(
          ModelChooseRole value, $Res Function(ModelChooseRole) _then) =
      _$ModelChooseRoleCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String valueCategory,
      String textCategory,
      String imageAssetLink,
      bool boolActive,
      String note});
}

/// @nodoc
class _$ModelChooseRoleCopyWithImpl<$Res>
    implements $ModelChooseRoleCopyWith<$Res> {
  _$ModelChooseRoleCopyWithImpl(this._self, this._then);

  final ModelChooseRole _self;
  final $Res Function(ModelChooseRole) _then;

  /// Create a copy of ModelChooseRole
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? valueCategory = null,
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
      valueCategory: null == valueCategory
          ? _self.valueCategory
          : valueCategory // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _ModelChooseRole extends ModelChooseRole {
  const _ModelChooseRole(
      {required this.id,
      required this.valueCategory,
      required this.textCategory,
      required this.imageAssetLink,
      required this.boolActive,
      required this.note})
      : super._();
  factory _ModelChooseRole.fromJson(Map<String, dynamic> json) =>
      _$ModelChooseRoleFromJson(json);

  @override
  final int id;
  @override
  final String valueCategory;
  @override
  final String textCategory;
  @override
  final String imageAssetLink;
  @override
  final bool boolActive;
  @override
  final String note;

  /// Create a copy of ModelChooseRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelChooseRoleCopyWith<_ModelChooseRole> get copyWith =>
      __$ModelChooseRoleCopyWithImpl<_ModelChooseRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelChooseRoleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelChooseRole &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.valueCategory, valueCategory) ||
                other.valueCategory == valueCategory) &&
            (identical(other.textCategory, textCategory) ||
                other.textCategory == textCategory) &&
            (identical(other.imageAssetLink, imageAssetLink) ||
                other.imageAssetLink == imageAssetLink) &&
            (identical(other.boolActive, boolActive) ||
                other.boolActive == boolActive) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, valueCategory, textCategory,
      imageAssetLink, boolActive, note);

  @override
  String toString() {
    return 'ModelChooseRole(id: $id, valueCategory: $valueCategory, textCategory: $textCategory, imageAssetLink: $imageAssetLink, boolActive: $boolActive, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$ModelChooseRoleCopyWith<$Res>
    implements $ModelChooseRoleCopyWith<$Res> {
  factory _$ModelChooseRoleCopyWith(
          _ModelChooseRole value, $Res Function(_ModelChooseRole) _then) =
      __$ModelChooseRoleCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String valueCategory,
      String textCategory,
      String imageAssetLink,
      bool boolActive,
      String note});
}

/// @nodoc
class __$ModelChooseRoleCopyWithImpl<$Res>
    implements _$ModelChooseRoleCopyWith<$Res> {
  __$ModelChooseRoleCopyWithImpl(this._self, this._then);

  final _ModelChooseRole _self;
  final $Res Function(_ModelChooseRole) _then;

  /// Create a copy of ModelChooseRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? valueCategory = null,
    Object? textCategory = null,
    Object? imageAssetLink = null,
    Object? boolActive = null,
    Object? note = null,
  }) {
    return _then(_ModelChooseRole(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      valueCategory: null == valueCategory
          ? _self.valueCategory
          : valueCategory // ignore: cast_nullable_to_non_nullable
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
