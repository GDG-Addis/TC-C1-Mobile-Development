import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

part 'cart_state.dart';
part 'cart_list_extension.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends HydratedCubit<CartState> {
  static const key = "carts";
  CartCubit() : super(CartState(carts: const []));

  void add(Product product) {
    var carts = state.carts;
    emit(state.copyWith(carts: carts.addOrUpdate(product)));
  }

  void increment(int productId) {
    var carts = state.carts;
    emit(state.copyWith(carts: carts.addByProductId(productId)));
  }

  void decrement(int productId) {
    var carts = state.carts;
    emit(state.copyWith(carts: carts.removeByProductId(productId)));
  }

  @override
  CartState fromJson(Map<String, dynamic> json) => CartState(
      carts: json[key].map<CartState>((e) => Cart.fromJson(e)).toList());

  @override
  Map<String, dynamic> toJson(CartState state) => <String, dynamic>{
        key: state.carts.map((e) => e.toJson()).toList(),
      };
}
