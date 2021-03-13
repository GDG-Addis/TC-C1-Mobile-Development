import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

class CategoryConverter implements JsonConverter<ProductCategory, String> {
  const CategoryConverter();

  @override
  ProductCategory fromJson(String json) {
    if (json == 'men clothing') {
      return const ProductCategory.menClothing();
    } else if (json == 'women clothing') {
      return const ProductCategory.womenClothing();
    } else if (json == 'electronics') {
      return const ProductCategory.electronics();
    } else if (json == 'jewelery') {
      return const ProductCategory.jewelery();
    } else {
      return const ProductCategory.other();
    }
  }

  @override
  String toJson(ProductCategory object) => null;
}

@freezed
abstract class ProductCategory with _$ProductCategory {
  const factory ProductCategory.electronics() = ElectronicsProductCategory;

  const factory ProductCategory.jewelery() = JeweleryProductCategory;

  const factory ProductCategory.menClothing() = MenClothingProductCategory;

  const factory ProductCategory.other() = OtherProductCategory;

  const factory ProductCategory.womenClothing() = WomenClothingProductCategory;
}
