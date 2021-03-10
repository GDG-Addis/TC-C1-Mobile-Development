import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
abstract class Cart with _$Cart {
  factory Cart({
    @required int quantity,
    @required Product product,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

extension CartX on Cart {
  Cart addQuantity() => copyWith(quantity: quantity + 1);

  Cart decrementQuantity() {
    if (quantity == 0) return this;
    return copyWith(quantity: quantity - 1);
  }
}
