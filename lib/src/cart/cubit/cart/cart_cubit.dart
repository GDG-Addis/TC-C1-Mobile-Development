import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

part 'cart_cubit.freezed.dart';
part 'cart_list_extension.dart';
part 'cart_state.dart';

class CartCubit extends HydratedCubit<CartState> {
  @visibleForTesting
  static const key = "carts";

  CartCubit() : super(const CartState(carts: []));

  void addProduct(Product product) {
    final carts = state.carts.addOrUpdate(product);
    final nextState = state.copyWith(carts: carts);
    emit(nextState);
  }

  void decreaseQuantity(Cart cart) {
    final carts = state.carts.removeOrDecrementQuantity(cart);
    final nextState = state.copyWith(carts: carts);
    emit(nextState);
  }

  @override
  CartState fromJson(Map<String, dynamic> json) {
    final carts = json[key].map<Cart>((e) => Cart.fromJson(e)).toList();
    return CartState(carts: carts);
  }

  void removeProduct(Product product) {
    final carts = state.carts.removeByProduct(product);
    final nextState = state.copyWith(carts: carts);
    emit(nextState);
  }

  @override
  Map<String, dynamic> toJson(CartState state) {
    return {key: state.carts.map((e) => e.toJson()).toList()};
  }
}
