import 'package:flutter_test/flutter_test.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

void main() {
  group('Product', () {
    test('fromJson should return Product with correct values', () {
      final json = {
        'id': 1,
        'price': 109.95,
        'title': 'Fjallraven',
        'description': 'description',
        'category': 'men clothing',
        'image': 'image',
      };

      final actual = Product.fromJson(json);

      expect(actual.id, 1);
      expect(actual.price, 109.95);
      expect(actual.image, 'image');
      expect(actual.description, 'description');
      expect(actual.category, const MenClothingProductCategory());
    });
  });
}
