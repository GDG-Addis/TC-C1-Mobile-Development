// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
class _$AddressTearOff {
  const _$AddressTearOff();

// ignore: unused_element
  _Address call(
      {@required String city,
      @required String street,
      @required int number,
      @required String zipcode,
      @required Geolocation geolocation}) {
    return _Address(
      city: city,
      street: street,
      number: number,
      zipcode: zipcode,
      geolocation: geolocation,
    );
  }

// ignore: unused_element
  Address fromJson(Map<String, Object> json) {
    return Address.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Address = _$AddressTearOff();

/// @nodoc
mixin _$Address {
  String get city;
  String get street;
  int get number;
  String get zipcode;
  Geolocation get geolocation;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {String city,
      String street,
      int number,
      String zipcode,
      Geolocation geolocation});

  $GeolocationCopyWith<$Res> get geolocation;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object city = freezed,
    Object street = freezed,
    Object number = freezed,
    Object zipcode = freezed,
    Object geolocation = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed ? _value.city : city as String,
      street: street == freezed ? _value.street : street as String,
      number: number == freezed ? _value.number : number as int,
      zipcode: zipcode == freezed ? _value.zipcode : zipcode as String,
      geolocation: geolocation == freezed
          ? _value.geolocation
          : geolocation as Geolocation,
    ));
  }

  @override
  $GeolocationCopyWith<$Res> get geolocation {
    if (_value.geolocation == null) {
      return null;
    }
    return $GeolocationCopyWith<$Res>(_value.geolocation, (value) {
      return _then(_value.copyWith(geolocation: value));
    });
  }
}

/// @nodoc
abstract class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) then) =
      __$AddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String city,
      String street,
      int number,
      String zipcode,
      Geolocation geolocation});

  @override
  $GeolocationCopyWith<$Res> get geolocation;
}

/// @nodoc
class __$AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(_Address _value, $Res Function(_Address) _then)
      : super(_value, (v) => _then(v as _Address));

  @override
  _Address get _value => super._value as _Address;

  @override
  $Res call({
    Object city = freezed,
    Object street = freezed,
    Object number = freezed,
    Object zipcode = freezed,
    Object geolocation = freezed,
  }) {
    return _then(_Address(
      city: city == freezed ? _value.city : city as String,
      street: street == freezed ? _value.street : street as String,
      number: number == freezed ? _value.number : number as int,
      zipcode: zipcode == freezed ? _value.zipcode : zipcode as String,
      geolocation: geolocation == freezed
          ? _value.geolocation
          : geolocation as Geolocation,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Address with DiagnosticableTreeMixin implements _Address {
  const _$_Address(
      {@required this.city,
      @required this.street,
      @required this.number,
      @required this.zipcode,
      @required this.geolocation})
      : assert(city != null),
        assert(street != null),
        assert(number != null),
        assert(zipcode != null),
        assert(geolocation != null);

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$_$_AddressFromJson(json);

  @override
  final String city;
  @override
  final String street;
  @override
  final int number;
  @override
  final String zipcode;
  @override
  final Geolocation geolocation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Address(city: $city, street: $street, number: $number, zipcode: $zipcode, geolocation: $geolocation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Address'))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('zipcode', zipcode))
      ..add(DiagnosticsProperty('geolocation', geolocation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Address &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.zipcode, zipcode) ||
                const DeepCollectionEquality()
                    .equals(other.zipcode, zipcode)) &&
            (identical(other.geolocation, geolocation) ||
                const DeepCollectionEquality()
                    .equals(other.geolocation, geolocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(zipcode) ^
      const DeepCollectionEquality().hash(geolocation);

  @JsonKey(ignore: true)
  @override
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddressToJson(this);
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {@required String city,
      @required String street,
      @required int number,
      @required String zipcode,
      @required Geolocation geolocation}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  String get city;
  @override
  String get street;
  @override
  int get number;
  @override
  String get zipcode;
  @override
  Geolocation get geolocation;
  @override
  @JsonKey(ignore: true)
  _$AddressCopyWith<_Address> get copyWith;
}
