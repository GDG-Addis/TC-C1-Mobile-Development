import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_name_model.freezed.dart';
part 'full_name_model.g.dart';

@freezed
abstract class FullName with _$FullName {
  const factory FullName({
    @required @JsonKey(name: 'firstname') String firstName,
    @required @JsonKey(name: 'lastname') String lastName,
  }) = _FullName;

  factory FullName.fromJson(Map<String, dynamic> json) =>
      _$FullNameFromJson(json);
}
