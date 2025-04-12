// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoriesEntities {
  int get id;
  String get name;
  String get username;
  String get email;
  Address get address;

  /// Create a copy of StoriesEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoriesEntitiesCopyWith<StoriesEntities> get copyWith =>
      _$StoriesEntitiesCopyWithImpl<StoriesEntities>(
          this as StoriesEntities, _$identity);

  /// Serializes this StoriesEntities to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoriesEntities &&
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
    return 'StoriesEntities(id: $id, name: $name, username: $username, email: $email, address: $address)';
  }
}

/// @nodoc
abstract mixin class $StoriesEntitiesCopyWith<$Res> {
  factory $StoriesEntitiesCopyWith(
          StoriesEntities value, $Res Function(StoriesEntities) _then) =
      _$StoriesEntitiesCopyWithImpl;
  @useResult
  $Res call(
      {int id, String name, String username, String email, Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$StoriesEntitiesCopyWithImpl<$Res>
    implements $StoriesEntitiesCopyWith<$Res> {
  _$StoriesEntitiesCopyWithImpl(this._self, this._then);

  final StoriesEntities _self;
  final $Res Function(StoriesEntities) _then;

  /// Create a copy of StoriesEntities
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
              as Address,
    ));
  }

  /// Create a copy of StoriesEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StoriesEntities implements StoriesEntities {
  const _StoriesEntities(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address});
  factory _StoriesEntities.fromJson(Map<String, dynamic> json) =>
      _$StoriesEntitiesFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final Address address;

  /// Create a copy of StoriesEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoriesEntitiesCopyWith<_StoriesEntities> get copyWith =>
      __$StoriesEntitiesCopyWithImpl<_StoriesEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoriesEntitiesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoriesEntities &&
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
    return 'StoriesEntities(id: $id, name: $name, username: $username, email: $email, address: $address)';
  }
}

/// @nodoc
abstract mixin class _$StoriesEntitiesCopyWith<$Res>
    implements $StoriesEntitiesCopyWith<$Res> {
  factory _$StoriesEntitiesCopyWith(
          _StoriesEntities value, $Res Function(_StoriesEntities) _then) =
      __$StoriesEntitiesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id, String name, String username, String email, Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$StoriesEntitiesCopyWithImpl<$Res>
    implements _$StoriesEntitiesCopyWith<$Res> {
  __$StoriesEntitiesCopyWithImpl(this._self, this._then);

  final _StoriesEntities _self;
  final $Res Function(_StoriesEntities) _then;

  /// Create a copy of StoriesEntities
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
    return _then(_StoriesEntities(
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
              as Address,
    ));
  }

  /// Create a copy of StoriesEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }
}

/// @nodoc
mixin _$Address {
  String get street;
  String get suite;
  String get city;
  String get zipcode;
  Geo get geo;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressCopyWith<Address> get copyWith =>
      _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Address &&
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
    return 'Address(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }
}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) =
      _$AddressCopyWithImpl;
  @useResult
  $Res call(
      {String street, String suite, String city, String zipcode, Geo geo});

  $GeoCopyWith<$Res> get geo;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

  /// Create a copy of Address
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
              as Geo,
    ));
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoCopyWith<$Res> get geo {
    return $GeoCopyWith<$Res>(_self.geo, (value) {
      return _then(_self.copyWith(geo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Address implements Address {
  const _Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});
  factory _Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @override
  final String street;
  @override
  final String suite;
  @override
  final String city;
  @override
  final String zipcode;
  @override
  final Geo geo;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Address &&
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
    return 'Address(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }
}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) =
      __$AddressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String street, String suite, String city, String zipcode, Geo geo});

  @override
  $GeoCopyWith<$Res> get geo;
}

/// @nodoc
class __$AddressCopyWithImpl<$Res> implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

  /// Create a copy of Address
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
    return _then(_Address(
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
              as Geo,
    ));
  }

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoCopyWith<$Res> get geo {
    return $GeoCopyWith<$Res>(_self.geo, (value) {
      return _then(_self.copyWith(geo: value));
    });
  }
}

/// @nodoc
mixin _$Geo {
  String get lat;
  String get lng;

  /// Create a copy of Geo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeoCopyWith<Geo> get copyWith =>
      _$GeoCopyWithImpl<Geo>(this as Geo, _$identity);

  /// Serializes this Geo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Geo &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @override
  String toString() {
    return 'Geo(lat: $lat, lng: $lng)';
  }
}

/// @nodoc
abstract mixin class $GeoCopyWith<$Res> {
  factory $GeoCopyWith(Geo value, $Res Function(Geo) _then) = _$GeoCopyWithImpl;
  @useResult
  $Res call({String lat, String lng});
}

/// @nodoc
class _$GeoCopyWithImpl<$Res> implements $GeoCopyWith<$Res> {
  _$GeoCopyWithImpl(this._self, this._then);

  final Geo _self;
  final $Res Function(Geo) _then;

  /// Create a copy of Geo
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
class _Geo implements Geo {
  const _Geo({required this.lat, required this.lng});
  factory _Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  @override
  final String lat;
  @override
  final String lng;

  /// Create a copy of Geo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeoCopyWith<_Geo> get copyWith =>
      __$GeoCopyWithImpl<_Geo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Geo &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @override
  String toString() {
    return 'Geo(lat: $lat, lng: $lng)';
  }
}

/// @nodoc
abstract mixin class _$GeoCopyWith<$Res> implements $GeoCopyWith<$Res> {
  factory _$GeoCopyWith(_Geo value, $Res Function(_Geo) _then) =
      __$GeoCopyWithImpl;
  @override
  @useResult
  $Res call({String lat, String lng});
}

/// @nodoc
class __$GeoCopyWithImpl<$Res> implements _$GeoCopyWith<$Res> {
  __$GeoCopyWithImpl(this._self, this._then);

  final _Geo _self;
  final $Res Function(_Geo) _then;

  /// Create a copy of Geo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_Geo(
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
