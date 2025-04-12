// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fails.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Failure {
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) =
      _$FailureCopyWithImpl;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ServerFailure implements Failure {
  const ServerFailure([this.message]);

  @override
  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.serverError(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) _then) =
      _$ServerFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ServerFailure(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class UnauthorizedFailure implements Failure {
  const UnauthorizedFailure([this.message]);

  @override
  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnauthorizedFailureCopyWith<UnauthorizedFailure> get copyWith =>
      _$UnauthorizedFailureCopyWithImpl<UnauthorizedFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnauthorizedFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message)';
  }
}

/// @nodoc
abstract mixin class $UnauthorizedFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $UnauthorizedFailureCopyWith(
          UnauthorizedFailure value, $Res Function(UnauthorizedFailure) _then) =
      _$UnauthorizedFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$UnauthorizedFailureCopyWithImpl<$Res>
    implements $UnauthorizedFailureCopyWith<$Res> {
  _$UnauthorizedFailureCopyWithImpl(this._self, this._then);

  final UnauthorizedFailure _self;
  final $Res Function(UnauthorizedFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UnauthorizedFailure(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ForbiddenFailure implements Failure {
  const ForbiddenFailure([this.message]);

  @override
  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForbiddenFailureCopyWith<ForbiddenFailure> get copyWith =>
      _$ForbiddenFailureCopyWithImpl<ForbiddenFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForbiddenFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.forbidden(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ForbiddenFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $ForbiddenFailureCopyWith(
          ForbiddenFailure value, $Res Function(ForbiddenFailure) _then) =
      _$ForbiddenFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ForbiddenFailureCopyWithImpl<$Res>
    implements $ForbiddenFailureCopyWith<$Res> {
  _$ForbiddenFailureCopyWithImpl(this._self, this._then);

  final ForbiddenFailure _self;
  final $Res Function(ForbiddenFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ForbiddenFailure(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class NotFoundFailure implements Failure {
  const NotFoundFailure([this.message]);

  @override
  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotFoundFailureCopyWith<NotFoundFailure> get copyWith =>
      _$NotFoundFailureCopyWithImpl<NotFoundFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotFoundFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.notFound(message: $message)';
  }
}

/// @nodoc
abstract mixin class $NotFoundFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $NotFoundFailureCopyWith(
          NotFoundFailure value, $Res Function(NotFoundFailure) _then) =
      _$NotFoundFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$NotFoundFailureCopyWithImpl<$Res>
    implements $NotFoundFailureCopyWith<$Res> {
  _$NotFoundFailureCopyWithImpl(this._self, this._then);

  final NotFoundFailure _self;
  final $Res Function(NotFoundFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NotFoundFailure(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class TimeOutFailure implements Failure {
  const TimeOutFailure([this.message]);

  @override
  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimeOutFailureCopyWith<TimeOutFailure> get copyWith =>
      _$TimeOutFailureCopyWithImpl<TimeOutFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimeOutFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.timeOut(message: $message)';
  }
}

/// @nodoc
abstract mixin class $TimeOutFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $TimeOutFailureCopyWith(
          TimeOutFailure value, $Res Function(TimeOutFailure) _then) =
      _$TimeOutFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$TimeOutFailureCopyWithImpl<$Res>
    implements $TimeOutFailureCopyWith<$Res> {
  _$TimeOutFailureCopyWithImpl(this._self, this._then);

  final TimeOutFailure _self;
  final $Res Function(TimeOutFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(TimeOutFailure(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class NoConnectionFailure implements Failure {
  const NoConnectionFailure([this.message]);

  @override
  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoConnectionFailureCopyWith<NoConnectionFailure> get copyWith =>
      _$NoConnectionFailureCopyWithImpl<NoConnectionFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoConnectionFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.noConnection(message: $message)';
  }
}

/// @nodoc
abstract mixin class $NoConnectionFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $NoConnectionFailureCopyWith(
          NoConnectionFailure value, $Res Function(NoConnectionFailure) _then) =
      _$NoConnectionFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$NoConnectionFailureCopyWithImpl<$Res>
    implements $NoConnectionFailureCopyWith<$Res> {
  _$NoConnectionFailureCopyWithImpl(this._self, this._then);

  final NoConnectionFailure _self;
  final $Res Function(NoConnectionFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NoConnectionFailure(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ConnectionTimeoutFailure implements Failure {
  const ConnectionTimeoutFailure([this.message]);

  @override
  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConnectionTimeoutFailureCopyWith<ConnectionTimeoutFailure> get copyWith =>
      _$ConnectionTimeoutFailureCopyWithImpl<ConnectionTimeoutFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectionTimeoutFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.connectionTimeout(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ConnectionTimeoutFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $ConnectionTimeoutFailureCopyWith(ConnectionTimeoutFailure value,
          $Res Function(ConnectionTimeoutFailure) _then) =
      _$ConnectionTimeoutFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ConnectionTimeoutFailureCopyWithImpl<$Res>
    implements $ConnectionTimeoutFailureCopyWith<$Res> {
  _$ConnectionTimeoutFailureCopyWithImpl(this._self, this._then);

  final ConnectionTimeoutFailure _self;
  final $Res Function(ConnectionTimeoutFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ConnectionTimeoutFailure(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class InvalidDataFailure implements Failure {
  const InvalidDataFailure([this.message]);

  @override
  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InvalidDataFailureCopyWith<InvalidDataFailure> get copyWith =>
      _$InvalidDataFailureCopyWithImpl<InvalidDataFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidDataFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.invalidData(message: $message)';
  }
}

/// @nodoc
abstract mixin class $InvalidDataFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $InvalidDataFailureCopyWith(
          InvalidDataFailure value, $Res Function(InvalidDataFailure) _then) =
      _$InvalidDataFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$InvalidDataFailureCopyWithImpl<$Res>
    implements $InvalidDataFailureCopyWith<$Res> {
  _$InvalidDataFailureCopyWithImpl(this._self, this._then);

  final InvalidDataFailure _self;
  final $Res Function(InvalidDataFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(InvalidDataFailure(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class EmptyResponseFailure implements Failure {
  const EmptyResponseFailure([this.message]);

  @override
  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmptyResponseFailureCopyWith<EmptyResponseFailure> get copyWith =>
      _$EmptyResponseFailureCopyWithImpl<EmptyResponseFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmptyResponseFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.emptyResponse(message: $message)';
  }
}

/// @nodoc
abstract mixin class $EmptyResponseFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $EmptyResponseFailureCopyWith(EmptyResponseFailure value,
          $Res Function(EmptyResponseFailure) _then) =
      _$EmptyResponseFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$EmptyResponseFailureCopyWithImpl<$Res>
    implements $EmptyResponseFailureCopyWith<$Res> {
  _$EmptyResponseFailureCopyWithImpl(this._self, this._then);

  final EmptyResponseFailure _self;
  final $Res Function(EmptyResponseFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(EmptyResponseFailure(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class UnexpectedFailure implements Failure {
  const UnexpectedFailure([this.message]);

  @override
  final String? message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnexpectedFailureCopyWith<UnexpectedFailure> get copyWith =>
      _$UnexpectedFailureCopyWithImpl<UnexpectedFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnexpectedFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.unexpected(message: $message)';
  }
}

/// @nodoc
abstract mixin class $UnexpectedFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $UnexpectedFailureCopyWith(
          UnexpectedFailure value, $Res Function(UnexpectedFailure) _then) =
      _$UnexpectedFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$UnexpectedFailureCopyWithImpl<$Res>
    implements $UnexpectedFailureCopyWith<$Res> {
  _$UnexpectedFailureCopyWithImpl(this._self, this._then);

  final UnexpectedFailure _self;
  final $Res Function(UnexpectedFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UnexpectedFailure(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
