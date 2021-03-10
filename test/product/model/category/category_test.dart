import 'package:flutter_test/flutter_test.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

void main() {
  group('CategoryConverter', () {
    test('fromJson method should map to the right ProductCategory', () {
      const categories = {
        'men clothing': MenClothingProductCategory(),
        'women clothing': WomenClothingProductCategory(),
        'electronics': ElectronicsProductCategory(),
        'jewelery': JeweleryProductCategory(),
        'furniture': OtherProductCategory(),
      };

      for (final category in categories.entries) {
        // ignore: prefer_const_constructors
        final converter = CategoryConverter();
        expect(converter.fromJson(category.key), category.value);
      }
    });

    test('toJson should always return null', () {
      // ignore: prefer_const_constructors
      final converter = CategoryConverter();
      expect(converter.toJson(const MenClothingProductCategory()), null);
      expect(converter.toJson(const WomenClothingProductCategory()), null);
    });
  });
}
