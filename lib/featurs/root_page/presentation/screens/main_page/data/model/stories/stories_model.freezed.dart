// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoriesModels {
  int get id;
  String get name;
  String get username;
  String get email;
  AddressModel get address;

  /// Create a copy of StoriesModels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoriesModelsCopyWith<StoriesModels> get copyWith =>
      _$StoriesModelsCopyWithImpl<StoriesModels>(
          this as StoriesModels, _$identity);

  /// Serializes this StoriesModels to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoriesModels &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, username, email, address);

  @override
  String toString() {
    return 'StoriesModels(id: $id, name: $name, username: $username, email: $email, address: $address)';
  }
}

/// @nodoc
abstract mixin class $StoriesModelsCopyWith<$Res> {
  factory $StoriesModelsCopyWith(
          StoriesModels value, $Res Function(StoriesModels) _then) =
      _$StoriesModelsCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      AddressModel address});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$StoriesModelsCopyWithImpl<$Res>
    implements $StoriesModelsCopyWith<$Res> {
  _$StoriesModelsCopyWithImpl(this._self, this._then);

  final StoriesModels _self;
  final $Res Function(StoriesModels) _then;

  /// Create a copy of StoriesModels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? address = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }

  /// Create a copy of StoriesModels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StoriesModels extends StoriesModels {
  const _StoriesModels(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address})
      : super._();
  factory _StoriesModels.fromJson(Map<String, dynamic> json) =>
      _$StoriesModelsFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final AddressModel address;

  /// Create a copy of StoriesModels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoriesModelsCopyWith<_StoriesModels> get copyWith =>
      __$StoriesModelsCopyWithImpl<_StoriesModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoriesModelsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoriesModels &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, username, email, address);

  @override
  String toString() {
    return 'StoriesModels(id: $id, name: $name, username: $username, email: $email, address: $address)';
  }
}

/// @nodoc
abstract mixin class _$StoriesModelsCopyWith<$Res>
    implements $StoriesModelsCopyWith<$Res> {
  factory _$StoriesModelsCopyWith(
          _StoriesModels value, $Res Function(_StoriesModels) _then) =
      __$StoriesModelsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      AddressModel address});

  @override
  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$StoriesModelsCopyWithImpl<$Res>
    implements _$StoriesModelsCopyWith<$Res> {
  __$StoriesModelsCopyWithImpl(this._self, this._then);

  final _StoriesModels _self;
  final $Res Function(_StoriesModels) _then;

  /// Create a copy of StoriesModels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? address = null,
  }) {
    return _then(_StoriesModels(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }

  /// Create a copy of StoriesModels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }
}

/// @nodoc
mixin _$AddressModel {
  String get street;
  String get suite;
  String get city;
  String get zipcode;
  GeoModel get geo;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<AddressModel> get copyWith =>
      _$AddressModelCopyWithImpl<AddressModel>(
          this as AddressModel, _$identity);

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressModel &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.suite, suite) || other.suite == suite) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.geo, geo) || other.geo == geo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, street, suite, city, zipcode, geo);

  @override
  String toString() {
    return 'AddressModel(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }
}

/// @nodoc
abstract mixin class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) _then) =
      _$AddressModelCopyWithImpl;
  @useResult
  $Res call(
      {String street, String suite, String city, String zipcode, GeoModel geo});

  $GeoModelCopyWith<$Res> get geo;
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res> implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._self, this._then);

  final AddressModel _self;
  final $Res Function(AddressModel) _then;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? suite = null,
    Object? city = null,
    Object? zipcode = null,
    Object? geo = null,
  }) {
    return _then(_self.copyWith(
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: null == suite
          ? _self.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _self.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      geo: null == geo
          ? _self.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as GeoModel,
    ));
  }

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoModelCopyWith<$Res> get geo {
    return $GeoModelCopyWith<$Res>(_self.geo, (value) {
      return _then(_self.copyWith(geo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AddressModel extends AddressModel {
  const _AddressModel(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo})
      : super._();
  factory _AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  @override
  final String street;
  @override
  final String suite;
  @override
  final String city;
  @override
  final String zipcode;
  @override
  final GeoModel geo;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressModelCopyWith<_AddressModel> get copyWith =>
      __$AddressModelCopyWithImpl<_AddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddressModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressModel &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.suite, suite) || other.suite == suite) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.geo, geo) || other.geo == geo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, street, suite, city, zipcode, geo);

  @override
  String toString() {
    return 'AddressModel(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }
}

/// @nodoc
abstract mixin class _$AddressModelCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$AddressModelCopyWith(
          _AddressModel value, $Res Function(_AddressModel) _then) =
      __$AddressModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String street, String suite, String city, String zipcode, GeoModel geo});

  @override
  $GeoModelCopyWith<$Res> get geo;
}

/// @nodoc
class __$AddressModelCopyWithImpl<$Res>
    implements _$AddressModelCopyWith<$Res> {
  __$AddressModelCopyWithImpl(this._self, this._then);

  final _AddressModel _self;
  final $Res Function(_AddressModel) _then;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? street = null,
    Object? suite = null,
    Object? city = null,
    Object? zipcode = null,
    Object? geo = null,
  }) {
    return _then(_AddressModel(
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: null == suite
          ? _self.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _self.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      geo: null == geo
          ? _self.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as GeoModel,
    ));
  }

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoModelCopyWith<$Res> get geo {
    return $GeoModelCopyWith<$Res>(_self.geo, (value) {
      return _then(_self.copyWith(geo: value));
    });
  }
}

/// @nodoc
mixin _$GeoModel {
  String get lat;
  String get lng;

  /// Create a copy of GeoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeoModelCopyWith<GeoModel> get copyWith =>
      _$GeoModelCopyWithImpl<GeoModel>(this as GeoModel, _$identity);

  /// Serializes this GeoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeoModel &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @override
  String toString() {
    return 'GeoModel(lat: $lat, lng: $lng)';
  }
}

/// @nodoc
abstract mixin class $GeoModelCopyWith<$Res> {
  factory $GeoModelCopyWith(GeoModel value, $Res Function(GeoModel) _then) =
      _$GeoModelCopyWithImpl;
  @useResult
  $Res call({String lat, String lng});
}

/// @nodoc
class _$GeoModelCopyWithImpl<$Res> implements $GeoModelCopyWith<$Res> {
  _$GeoModelCopyWithImpl(this._self, this._then);

  final GeoModel _self;
  final $Res Function(GeoModel) _then;

  /// Create a copy of GeoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_self.copyWith(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GeoModel extends GeoModel {
  const _GeoModel({required this.lat, required this.lng}) : super._();
  factory _GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);

  @override
  final String lat;
  @override
  final String lng;

  /// Create a copy of GeoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeoModelCopyWith<_GeoModel> get copyWith =>
      __$GeoModelCopyWithImpl<_GeoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeoModel &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @override
  String toString() {
    return 'GeoModel(lat: $lat, lng: $lng)';
  }
}

/// @nodoc
abstract mixin class _$GeoModelCopyWith<$Res>
    implements $GeoModelCopyWith<$Res> {
  factory _$GeoModelCopyWith(_GeoModel value, $Res Function(_GeoModel) _then) =
      __$GeoModelCopyWithImpl;
  @override
  @useResult
  $Res call({String lat, String lng});
}

/// @nodoc
class __$GeoModelCopyWithImpl<$Res> implements _$GeoModelCopyWith<$Res> {
  __$GeoModelCopyWithImpl(this._self, this._then);

  final _GeoModel _self;
  final $Res Function(_GeoModel) _then;

  /// Create a copy of GeoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_GeoModel(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
