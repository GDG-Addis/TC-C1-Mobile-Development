// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
class _$ProfileTearOff {
  const _$ProfileTearOff();

// ignore: unused_element
  _Profile call(
      {@required int id,
      @required String email,
      @required String username,
      @required @JsonKey(name: 'name') FullName fullName,
      @required Address address,
      @required String phone}) {
    return _Profile(
      id: id,
      email: email,
      username: username,
      fullName: fullName,
      address: address,
      phone: phone,
    );
  }

// ignore: unused_element
  Profile fromJson(Map<String, Object> json) {
    return Profile.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  int get id;
  String get email;
  String get username;
  @JsonKey(name: 'name')
  FullName get fullName;
  Address get address;
  String get phone;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String email,
      String username,
      @JsonKey(name: 'name') FullName fullName,
      Address address,
      String phone});

  $FullNameCopyWith<$Res> get fullName;
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object username = freezed,
    Object fullName = freezed,
    Object address = freezed,
    Object phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      fullName: fullName == freezed ? _value.fullName : fullName as FullName,
      address: address == freezed ? _value.address : address as Address,
      phone: phone == freezed ? _value.phone : phone as String,
    ));
  }

  @override
  $FullNameCopyWith<$Res> get fullName {
    if (_value.fullName == null) {
      return null;
    }
    return $FullNameCopyWith<$Res>(_value.fullName, (value) {
      return _then(_value.copyWith(fullName: value));
    });
  }

  @override
  $AddressCopyWith<$Res> get address {
    if (_value.address == null) {
      return null;
    }
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String email,
      String username,
      @JsonKey(name: 'name') FullName fullName,
      Address address,
      String phone});

  @override
  $FullNameCopyWith<$Res> get fullName;
  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object username = freezed,
    Object fullName = freezed,
    Object address = freezed,
    Object phone = freezed,
  }) {
    return _then(_Profile(
      id: id == freezed ? _value.id : id as int,
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      fullName: fullName == freezed ? _value.fullName : fullName as FullName,
      address: address == freezed ? _value.address : address as Address,
      phone: phone == freezed ? _value.phone : phone as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Profile with DiagnosticableTreeMixin implements _Profile {
  const _$_Profile(
      {@required this.id,
      @required this.email,
      @required this.username,
      @required @JsonKey(name: 'name') this.fullName,
      @required this.address,
      @required this.phone})
      : assert(id != null),
        assert(email != null),
        assert(username != null),
        assert(fullName != null),
        assert(address != null),
        assert(phone != null);

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String username;
  @override
  @JsonKey(name: 'name')
  final FullName fullName;
  @override
  final Address address;
  @override
  final String phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Profile(id: $id, email: $email, username: $username, fullName: $fullName, address: $address, phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Profile'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Profile &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileToJson(this);
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {@required int id,
      @required String email,
      @required String username,
      @required @JsonKey(name: 'name') FullName fullName,
      @required Address address,
      @required String phone}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String get username;
  @override
  @JsonKey(name: 'name')
  FullName get fullName;
  @override
  Address get address;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$ProfileCopyWith<_Profile> get copyWith;
}
