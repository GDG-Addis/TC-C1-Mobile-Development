import 'package:flutter/material.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({Key key, @required this.product})
      : assert(product != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.7,
              child: Image.network(product.image),
            ),
            Text(product.title),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
