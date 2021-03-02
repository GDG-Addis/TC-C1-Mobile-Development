// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'geolocation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Geolocation _$GeolocationFromJson(Map<String, dynamic> json) {
  return _Geolocation.fromJson(json);
}

/// @nodoc
class _$GeolocationTearOff {
  const _$GeolocationTearOff();

// ignore: unused_element
  _Geolocation call(
      {@required String lat, @required @JsonKey(name: 'long') String lng}) {
    return _Geolocation(
      lat: lat,
      lng: lng,
    );
  }

// ignore: unused_element
  Geolocation fromJson(Map<String, Object> json) {
    return Geolocation.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Geolocation = _$GeolocationTearOff();

/// @nodoc
mixin _$Geolocation {
  String get lat;
  @JsonKey(name: 'long')
  String get lng;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GeolocationCopyWith<Geolocation> get copyWith;
}

/// @nodoc
abstract class $GeolocationCopyWith<$Res> {
  factory $GeolocationCopyWith(
          Geolocation value, $Res Function(Geolocation) then) =
      _$GeolocationCopyWithImpl<$Res>;
  $Res call({String lat, @JsonKey(name: 'long') String lng});
}

/// @nodoc
class _$GeolocationCopyWithImpl<$Res> implements $GeolocationCopyWith<$Res> {
  _$GeolocationCopyWithImpl(this._value, this._then);

  final Geolocation _value;
  // ignore: unused_field
  final $Res Function(Geolocation) _then;

  @override
  $Res call({
    Object lat = freezed,
    Object lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed ? _value.lat : lat as String,
      lng: lng == freezed ? _value.lng : lng as String,
    ));
  }
}

/// @nodoc
abstract class _$GeolocationCopyWith<$Res>
    implements $GeolocationCopyWith<$Res> {
  factory _$GeolocationCopyWith(
          _Geolocation value, $Res Function(_Geolocation) then) =
      __$GeolocationCopyWithImpl<$Res>;
  @override
  $Res call({String lat, @JsonKey(name: 'long') String lng});
}

/// @nodoc
class __$GeolocationCopyWithImpl<$Res> extends _$GeolocationCopyWithImpl<$Res>
    implements _$GeolocationCopyWith<$Res> {
  __$GeolocationCopyWithImpl(
      _Geolocation _value, $Res Function(_Geolocation) _then)
      : super(_value, (v) => _then(v as _Geolocation));

  @override
  _Geolocation get _value => super._value as _Geolocation;

  @override
  $Res call({
    Object lat = freezed,
    Object lng = freezed,
  }) {
    return _then(_Geolocation(
      lat: lat == freezed ? _value.lat : lat as String,
      lng: lng == freezed ? _value.lng : lng as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Geolocation with DiagnosticableTreeMixin implements _Geolocation {
  const _$_Geolocation(
      {@required this.lat, @required @JsonKey(name: 'long') this.lng})
      : assert(lat != null),
        assert(lng != null);

  factory _$_Geolocation.fromJson(Map<String, dynamic> json) =>
      _$_$_GeolocationFromJson(json);

  @override
  final String lat;
  @override
  @JsonKey(name: 'long')
  final String lng;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Geolocation(lat: $lat, lng: $lng)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Geolocation'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Geolocation &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng);

  @JsonKey(ignore: true)
  @override
  _$GeolocationCopyWith<_Geolocation> get copyWith =>
      __$GeolocationCopyWithImpl<_Geolocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeolocationToJson(this);
  }
}

abstract class _Geolocation implements Geolocation {
  const factory _Geolocation(
      {@required String lat,
      @required @JsonKey(name: 'long') String lng}) = _$_Geolocation;

  factory _Geolocation.fromJson(Map<String, dynamic> json) =
      _$_Geolocation.fromJson;

  @override
  String get lat;
  @override
  @JsonKey(name: 'long')
  String get lng;
  @override
  @JsonKey(ignore: true)
  _$GeolocationCopyWith<_Geolocation> get copyWith;
}
