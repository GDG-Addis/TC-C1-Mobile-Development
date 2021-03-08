import 'package:techamp_flutter_shopping_app/app.dart';

class CartMock {
  static const _productId = 1;
  static const _price = 109.95;
  static const _title = 'Fjallraven';
  static const _description = 'description';
  static const _category = 'men clothing';
  static const _image = 'image';
  static const _quantity = 2;

  static final model = Cart(
    quantity: _quantity,
    product: Product(
      id: _productId,
      title: _title,
      image: _image,
      price: _price,
      description: _description,
      category: ProductCategory.menClothing(),
    ),
  );

  static final json = {
    "product": {
      'id': _productId,
      'price': _price,
      'title': _title,
      'description': _description,
      'category': _category,
      'image': _image,
    },
    "quantity": _quantity,
  };
}
