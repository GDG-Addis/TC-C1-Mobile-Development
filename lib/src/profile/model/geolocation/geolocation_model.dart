import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocation_model.freezed.dart';
part 'geolocation_model.g.dart';

@freezed
abstract class Geolocation with _$Geolocation {
  const factory Geolocation({
    @required String lat,
    @required @JsonKey(name: "long") String lng,
  }) = _Geolocation;

  factory Geolocation.fromJson(Map<String, dynamic> json) =>
      _$GeolocationFromJson(json);
}
