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
        _IconButton(
          iconData: cart.quantity == 1 ? Icons.delete : Icons.remove,
          isEnabled: cart.quantity > 0,
          onTap: () => context.read<CartCubit>().decreaseQuantity(cart),
        ),
        Text('${cart.quantity}'),
        _IconButton(
          iconData: Icons.add,
          onTap: () => context.read<CartCubit>().addProduct(cart.product),
        )
      ],
    );
  }
}

class _IconButton extends StatelessWidget {
  final bool isEnabled;
  final IconData iconData;
  final VoidCallback onTap;

  const _IconButton({
    Key key,
    this.onTap,
    this.iconData,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: isEnabled ? onTap : null,
      icon: Icon(iconData),
    );
  }
}
