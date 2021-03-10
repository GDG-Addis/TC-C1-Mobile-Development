import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

void main() {
  group('CartCubit', () {
    CartCubit cartCubit;
    Storage hydratedBlocStorage;

    setUp(() {
      hydratedBlocStorage = _MockStorage();
      HydratedBloc.storage = hydratedBlocStorage;
      cartCubit = CartCubit();
    });

    tearDown(() => cartCubit.close());

    group('addProduct', () {
      const product = Product(
        id: 10,
        price: 230.5,
        title: 'some title',
        image: 'image url',
        description: 'some description',
        category: MenClothingProductCategory(),
      );
      final expectedFirstCart = Cart(quantity: 1, product: product);
      final expectedSecondCart = Cart(quantity: 2, product: product);

      blocTest<CartCubit, CartState>(
        'should emit [ CartState ] when a product is added to the cart',
        build: () => cartCubit,
        act: (cubit) => cubit.addProduct(product),
        expect: [
          CartState(carts: [expectedFirstCart])
        ],
        verify: (cubit) => hydratedBlocStorage
            .write(CartCubit.key, [expectedFirstCart.toJson()]),
      );

      blocTest<CartCubit, CartState>(
        'should emit [ CartState, CartState ] when the same product is added multiple times',
        build: () => cartCubit,
        act: (cubit) => cubit..addProduct(product)..addProduct(product),
        expect: [
          CartState(carts: [expectedFirstCart]),
          CartState(carts: [expectedSecondCart]),
        ],
        verify: (cubit) => hydratedBlocStorage
            .write(CartCubit.key, [expectedSecondCart.toJson()]),
      );
    });

    group('removeProduct', () {
      const product = Product(
        id: 10,
        price: 230.5,
        title: 'some title',
        image: 'image url',
        description: 'some description',
        category: MenClothingProductCategory(),
      );
      final expectedFirstCart = Cart(quantity: 1, product: product);

      blocTest<CartCubit, CartState>(
        'should emit [ CartState, CartState ] when a product is removed after '
        'it is added',
        build: () => cartCubit,
        act: (cubit) => cubit
          ..addProduct(product)
          ..removeProduct(product),
        expect: [
          CartState(carts: [expectedFirstCart]),
          CartState(carts: []),
        ],
        verify: (cubit) => hydratedBlocStorage.write(CartCubit.key, []),
      );
    });

    group('decreaseQuantity', () {
      const product = Product(
        id: 10,
        price: 230.5,
        title: 'some title',
        image: 'image url',
        description: 'some description',
        category: MenClothingProductCategory(),
      );
      final expectedFirstCart = Cart(quantity: 1, product: product);
      final expectedSecondCart = Cart(quantity: 2, product: product);

      blocTest<CartCubit, CartState>(
        'should emit [ CartState, CartState, CartState ] when a cart quantity '
        'is decreased after the product was added multiple times',
        build: () => cartCubit,
        act: (cubit) => cubit
          ..addProduct(product)
          ..addProduct(product)
          ..decreaseQuantity(expectedSecondCart),
        expect: [
          CartState(carts: [expectedFirstCart]),
          CartState(carts: [expectedSecondCart]),
          CartState(carts: [expectedFirstCart]),
        ],
      );

      blocTest<CartCubit, CartState>(
        'should emit [ CartState, CartState ] when a product quantity is decreased and to below zero after adding to the cart',
        build: () => cartCubit,
        act: (cubit) => cubit
          ..addProduct(product)
          ..decreaseQuantity(expectedFirstCart),
        expect: [
          CartState(carts: [expectedFirstCart]),
          CartState(carts: []),
        ],
      );
    });
  });
}

class _MockStorage extends Mock implements Storage {
  @override
  Future<void> write(String key, value) async {}
}
