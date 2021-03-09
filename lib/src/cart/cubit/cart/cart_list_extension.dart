part of 'cart_cubit.dart';

extension Carts on List<Cart> {
  List<Cart> addOrUpdate(Product product) {
    final oldCart = firstWhere((c) => c.product == product, orElse: () => null);
    if (oldCart == null) {
      final cart = Cart(quantity: 1, product: product);
      return List.from(this)..add(cart);
    } else {
      final updatedCart = oldCart.addQuantity();
      return List.from(this)
        ..remove(oldCart)
        ..add(updatedCart);
    }
  }

  List<Cart> removeByProduct(Product product) {
    return List.from(this)..removeWhere((cart) => cart.product == product);
  }

  List<Cart> removeOrDecrementQuantity(Cart cart) {
    final updatedCart = cart.decrementQuantity();
    if (updatedCart.quantity == 0) {
      return List.from(this)..remove(cart);
    } else {
      return List.from(this)
        ..remove(cart)
        ..add(updatedCart);
    }
  }
}
