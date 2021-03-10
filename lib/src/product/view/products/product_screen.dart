import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProductsCubit>()..getAll(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: () => context.navigator.push(Routes.profileScreen),
          ),
        ),
        floatingActionButton: const _CartButton(),
        body: SafeArea(
          child: Builder(
            builder: (context) => RefreshIndicator(
              onRefresh: context.read<ProductsCubit>().refresh,
              child: BlocBuilder<ProductsCubit, ProductsState>(
                buildWhen: (previous, current) => previous.maybeWhen(
                  loaded: (products) => false,
                  orElse: () => true,
                ),
                builder: (context, state) => state.maybeWhen(
                  error: (error) => _ProductsErrorWidget(error: error),
                  loaded: (products) => _ProductsGridView(products: products),
                  orElse: () =>
                      Center(child: const CircularProgressIndicator()),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CartButton extends StatelessWidget {
  const _CartButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (_, state) {
        final count = state.carts.totalProductsQuantity;
        return Stack(
          overflow: Overflow.visible,
          children: [
            FloatingActionButton(
              onPressed: () => context.navigator.push(Routes.cartScreen),
              child: Icon(Icons.shopping_cart),
            ),
            if (count > 0)
              Positioned(
                top: -4.0,
                right: -2.0,
                child: CircleAvatar(
                  radius: 12.0,
                  backgroundColor: Colors.white,
                  child: Text("$count"),
                ),
              )
          ],
        );
      },
    );
  }
}

class _ProductItem extends StatelessWidget {
  final Product product;

  const _ProductItem({Key key, this.product})
      : assert(product != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.navigator.push(
        Routes.productScreen,
        arguments: ProductScreenArguments(product: product),
      ),
      child: Card(
        margin: EdgeInsets.zero,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(8),
                child: Image.network(product.image),
              ),
            ),
            Container(
              height: 48,
              color: Colors.grey[200],
              padding: EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 4),
                          Text('${product.price} ETB'),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () =>
                        context.read<CartCubit>().addProduct(product),
                    icon: Icon(Icons.add_shopping_cart_rounded),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductsErrorWidget extends StatelessWidget {
  final String error;

  const _ProductsErrorWidget({Key key, this.error})
      : assert(error != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          error,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 16),
        Align(
          child: RaisedButton(
            onPressed: context.read<ProductsCubit>().refresh,
            child: Text('Retry'),
          ),
        ),
      ],
    );
  }
}

class _ProductsGridView extends StatelessWidget {
  final List<Product> products;

  const _ProductsGridView({Key key, this.products})
      : assert(products != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1 / 1.2,
      ),
      padding: EdgeInsets.all(8),
      itemCount: products.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, index) => _ProductItem(product: products[index]),
    );
  }
}
