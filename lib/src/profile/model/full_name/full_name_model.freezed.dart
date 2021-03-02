// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'full_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FullName _$FullNameFromJson(Map<String, dynamic> json) {
  return _FullName.fromJson(json);
}

/// @nodoc
class _$FullNameTearOff {
  const _$FullNameTearOff();

// ignore: unused_element
  _FullName call(
      {@required @JsonKey(name: 'firstname') String firstName,
      @required @JsonKey(name: 'lastname') String lastName}) {
    return _FullName(
      firstName: firstName,
      lastName: lastName,
    );
  }

// ignore: unused_element
  FullName fromJson(Map<String, Object> json) {
    return FullName.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FullName = _$FullNameTearOff();

/// @nodoc
mixin _$FullName {
  @JsonKey(name: 'firstname')
  String get firstName;
  @JsonKey(name: 'lastname')
  String get lastName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FullNameCopyWith<FullName> get copyWith;
}

/// @nodoc
abstract class $FullNameCopyWith<$Res> {
  factory $FullNameCopyWith(FullName value, $Res Function(FullName) then) =
      _$FullNameCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'firstname') String firstName,
      @JsonKey(name: 'lastname') String lastName});
}

/// @nodoc
class _$FullNameCopyWithImpl<$Res> implements $FullNameCopyWith<$Res> {
  _$FullNameCopyWithImpl(this._value, this._then);

  final FullName _value;
  // ignore: unused_field
  final $Res Function(FullName) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

/// @nodoc
abstract class _$FullNameCopyWith<$Res> implements $FullNameCopyWith<$Res> {
  factory _$FullNameCopyWith(_FullName value, $Res Function(_FullName) then) =
      __$FullNameCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'firstname') String firstName,
      @JsonKey(name: 'lastname') String lastName});
}

/// @nodoc
class __$FullNameCopyWithImpl<$Res> extends _$FullNameCopyWithImpl<$Res>
    implements _$FullNameCopyWith<$Res> {
  __$FullNameCopyWithImpl(_FullName _value, $Res Function(_FullName) _then)
      : super(_value, (v) => _then(v as _FullName));

  @override
  _FullName get _value => super._value as _FullName;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_FullName(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FullName with DiagnosticableTreeMixin implements _FullName {
  const _$_FullName(
      {@required @JsonKey(name: 'firstname') this.firstName,
      @required @JsonKey(name: 'lastname') this.lastName})
      : assert(firstName != null),
        assert(lastName != null);

  factory _$_FullName.fromJson(Map<String, dynamic> json) =>
      _$_$_FullNameFromJson(json);

  @override
  @JsonKey(name: 'firstname')
  final String firstName;
  @override
  @JsonKey(name: 'lastname')
  final String lastName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FullName(firstName: $firstName, lastName: $lastName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FullName'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FullName &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName);

  @JsonKey(ignore: true)
  @override
  _$FullNameCopyWith<_FullName> get copyWith =>
      __$FullNameCopyWithImpl<_FullName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FullNameToJson(this);
  }
}

abstract class _FullName implements FullName {
  const factory _FullName(
      {@required @JsonKey(name: 'firstname') String firstName,
      @required @JsonKey(name: 'lastname') String lastName}) = _$_FullName;

  factory _FullName.fromJson(Map<String, dynamic> json) = _$_FullName.fromJson;

  @override
  @JsonKey(name: 'firstname')
  String get firstName;
  @override
  @JsonKey(name: 'lastname')
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$FullNameCopyWith<_FullName> get copyWith;
}
