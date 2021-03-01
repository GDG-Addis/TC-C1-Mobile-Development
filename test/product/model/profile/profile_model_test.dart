import 'package:flutter_test/flutter_test.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

import 'mock.dart';

void main() {
  group('Profile', () {
    test('fromJson should return Product with correct values', () {
      final actual = Profile.fromJson(ProfileMock.json);
      final expected = ProfileMock.model;

      expect(actual, expected);
    });
  });
}
