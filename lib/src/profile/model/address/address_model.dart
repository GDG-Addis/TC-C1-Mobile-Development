import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
abstract class Address with _$Address {
  const factory Address({
    @required String city,
    @required String street,
    @required int number,
    @required String zipcode,
    @required Geolocation geolocation,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
