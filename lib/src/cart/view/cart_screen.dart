import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (_, state) {
          final carts = state.carts;
          return ListView.builder(
            itemBuilder: (_, index) => itemBuilder(context, carts[index]),
            itemCount: carts.length,
          );
        },
      ),
    );
  }

  Widget itemBuilder(BuildContext context, Cart cart) {
    return ListTile(
      leading: Container(
        height: 60,
        width: 60,
        child: Image.network(cart.product.image),
      ),
      title: Text("${cart.product.title}"),
      subtitle: Text("${cart.quantity} x ${cart.product.price} "),
      trailing: _CartAction(
        cart: cart,
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
          onTap: () =>
              BlocProvider.of<CartCubit>(context).decrement(cart.product.id),
        ),
        Text("${cart.quantity}"),
        _IconButton(
          iconData: Icons.add,
          onTap: () =>
              BlocProvider.of<CartCubit>(context).increment(cart.product.id),
        )
      ],
    );
  }
}

class _IconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final bool isEnabled;

  const _IconButton({
    Key key,
    this.iconData,
    this.onTap,
    this.isEnabled = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: isEnabled ? onTap : null,
      icon: Icon(
        iconData,
      ),
    );
  }
}
