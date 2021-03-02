// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$_$_AddressFromJson(Map<String, dynamic> json) {
  return _$_Address(
    city: json['city'] as String,
    street: json['street'] as String,
    number: json['number'] as int,
    zipcode: json['zipcode'] as String,
    geolocation: json['geolocation'] == null
        ? null
        : Geolocation.fromJson(json['geolocation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'city': instance.city,
      'street': instance.street,
      'number': instance.number,
      'zipcode': instance.zipcode,
      'geolocation': instance.geolocation,
    };
