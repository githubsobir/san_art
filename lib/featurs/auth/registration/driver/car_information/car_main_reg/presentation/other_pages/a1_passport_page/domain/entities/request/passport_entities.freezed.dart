// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassportEntities {
  bool get boolGetData;
  String get message;
  List<File> get list;
  String get errorMessage;

  /// Create a copy of PassportEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportEntitiesCopyWith<PassportEntities> get copyWith =>
      _$PassportEntitiesCopyWithImpl<PassportEntities>(
          this as PassportEntities, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PassportEntities &&
            (identical(other.boolGetData, boolGetData) ||
                other.boolGetData == boolGetData) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.list, list) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boolGetData, message,
      const DeepCollectionEquality().hash(list), errorMessage);

  @override
  String toString() {
    return 'PassportEntities(boolGetData: $boolGetData, message: $message, list: $list, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $PassportEntitiesCopyWith<$Res> {
  factory $PassportEntitiesCopyWith(
          PassportEntities value, $Res Function(PassportEntities) _then) =
      _$PassportEntitiesCopyWithImpl;
  @useResult
  $Res call(
      {bool boolGetData, String message, List<File> list, String errorMessage});
}

/// @nodoc
class _$PassportEntitiesCopyWithImpl<$Res>
    implements $PassportEntitiesCopyWith<$Res> {
  _$PassportEntitiesCopyWithImpl(this._self, this._then);

  final PassportEntities _self;
  final $Res Function(PassportEntities) _then;

  /// Create a copy of PassportEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boolGetData = null,
    Object? message = null,
    Object? list = null,
    Object? errorMessage = null,
  }) {
    return _then(_self.copyWith(
      boolGetData: null == boolGetData
          ? _self.boolGetData
          : boolGetData // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<File>,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PassportEntities implements PassportEntities {
  _PassportEntities(
      {required this.boolGetData,
      required this.message,
      required final List<File> list,
      required this.errorMessage})
      : _list = list;

  @override
  final bool boolGetData;
  @override
  final String message;
  final List<File> _list;
  @override
  List<File> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final String errorMessage;

  /// Create a copy of PassportEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PassportEntitiesCopyWith<_PassportEntities> get copyWith =>
      __$PassportEntitiesCopyWithImpl<_PassportEntities>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PassportEntities &&
            (identical(other.boolGetData, boolGetData) ||
                other.boolGetData == boolGetData) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boolGetData, message,
      const DeepCollectionEquality().hash(_list), errorMessage);

  @override
  String toString() {
    return 'PassportEntities(boolGetData: $boolGetData, message: $message, list: $list, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$PassportEntitiesCopyWith<$Res>
    implements $PassportEntitiesCopyWith<$Res> {
  factory _$PassportEntitiesCopyWith(
          _PassportEntities value, $Res Function(_PassportEntities) _then) =
      __$PassportEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool boolGetData, String message, List<File> list, String errorMessage});
}

/// @nodoc
class __$PassportEntitiesCopyWithImpl<$Res>
    implements _$PassportEntitiesCopyWith<$Res> {
  __$PassportEntitiesCopyWithImpl(this._self, this._then);

  final _PassportEntities _self;
  final $Res Function(_PassportEntities) _then;

  /// Create a copy of PassportEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? boolGetData = null,
    Object? message = null,
    Object? list = null,
    Object? errorMessage = null,
  }) {
    return _then(_PassportEntities(
      boolGetData: null == boolGetData
          ? _self.boolGetData
          : boolGetData // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _self._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<File>,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
