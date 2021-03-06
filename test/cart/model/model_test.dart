import 'package:flutter_test/flutter_test.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

import 'mock.dart';

void main() {
  group('Cart', () {
    test('fromJson should return Product with correct values', () {
      final actual = Cart.fromJson(CartMock.json);
      final expected = CartMock.model;
      expect(actual, expected);
    });
    test('toJson should return Product with correct values', () {
      final actual = Cart.fromJson(CartMock.json);
      final expected = CartMock.model;
      expect(actual, expected);
    });
  });
}
