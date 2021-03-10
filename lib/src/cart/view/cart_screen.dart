import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (_, state) {
          return ListView.builder(
            itemCount: state.carts.length,
            itemBuilder: (_, index) {
              final cart = state.carts[index];
              return ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  child: Image.network(cart.product.image),
                ),
                title: Text(cart.product.title),
                subtitle: Text('${cart.quantity} x ${cart.product.price}'),
                trailing: _CartAction(
                  cart: cart,
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _CartAction extends StatelessWidget {
  final Cart cart;

  const _CartAction({Key key, this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(cart.quantity == 1 ? Icons.delete : Icons.remove),
          onPressed: () => cart.quantity > 0
              ? context.read<CartCubit>().decreaseQuantity(cart)
              : null,
        ),
        Text('${cart.quantity}'),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => context.read<CartCubit>().addProduct(cart.product),
        )
      ],
    );
  }
}
