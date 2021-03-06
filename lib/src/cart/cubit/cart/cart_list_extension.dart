part of 'cart_cubit.dart';

extension on List<Cart> {
  int indexOfProductId(int productId) {
    return indexWhere((e) => e.product.id == productId);
  }

  List<Cart> addOrUpdate(Product product) {
    var index = indexOfProductId(product.id);
    if (index < 0) {
      return List.from(this)
        ..add(
          Cart(
            product: product,
            quantity: 1,
          ),
        );
    }

    return List<Cart>.from(this).._incrementQuantity(index);
  }

  List<Cart> addByProductId(int productId) {
    var index = indexOfProductId(productId);
    if (index < 0) {
      return List.from(this);
    }

    return List<Cart>.from(this).._incrementQuantity(index);
  }

  List<Cart> removeByProductId(int productId) {
    var index = indexOfProductId(productId);
    if (index < 0) {
      return List.from(this);
    }

    return List<Cart>.from(this).._decrementQuantity(index);
  }

  void _incrementQuantity(int index) {
    var quantity = this[index].quantity;
    this[index] = this[index].copyWith(quantity: quantity + 1);
  }

  void _decrementQuantity(int index) {
    var quantity = this[index].quantity;
    if (quantity > 1) {
      this[index] = this[index].copyWith(quantity: quantity - 1);
    } else {
      removeAt(index);
    }
  }
}
