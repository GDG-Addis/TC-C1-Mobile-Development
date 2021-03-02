import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    @required int id,
    @required String email,
    @required String username,
    @required @JsonKey(name: 'name') FullName fullName,
    @required Address address,
    @required String phone,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
