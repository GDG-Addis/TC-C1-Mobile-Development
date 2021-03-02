// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$_$_ProfileFromJson(Map<String, dynamic> json) {
  return _$_Profile(
    id: json['id'] as int,
    email: json['email'] as String,
    username: json['username'] as String,
    fullName: json['name'] == null
        ? null
        : FullName.fromJson(json['name'] as Map<String, dynamic>),
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'name': instance.fullName,
      'address': instance.address,
      'phone': instance.phone,
    };
