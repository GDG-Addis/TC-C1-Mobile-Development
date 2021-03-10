part of 'cart_cubit.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({@required List<Cart> carts}) = _CartState;
}
