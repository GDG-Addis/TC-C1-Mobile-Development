import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

import '../model/mock.dart';

class MockStorage extends Mock implements Storage {
  @override
  Future<void> write(String key, dynamic value) async {}
}

void main() {
  final hydratedStorage = MockStorage();
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    HydratedBloc.storage = hydratedStorage;
  });
  group("add", () {
    blocTest<CartCubit, CartState>("Add to cart",
        build: () => CartCubit(),
        act: (cubit) {
          return cubit.add(
            CartMock.model.product,
          );
        },
        expect: [
          CartState(carts: [
            Cart(
              quantity: 1,
              product: CartMock.model.product,
            )
          ]),
        ]);

    blocTest<CartCubit, CartState>("Add to cart increments counter",
        build: () => CartCubit(),
        act: (cubit) {
          cubit.add(
            CartMock.model.product,
          );
          cubit.add(
            CartMock.model.product,
          );
        },
        expect: [
          CartState(carts: [
            Cart(
              quantity: 1,
              product: CartMock.model.product,
            )
          ]),
          CartState(carts: [
            Cart(
              quantity: 2,
              product: CartMock.model.product,
            )
          ]),
        ]);
  });
  group("increment", () {
    blocTest<CartCubit, CartState>("Increment cart",
        build: () => CartCubit(),
        act: (cubit) {
          cubit.add(
            CartMock.model.product,
          );
          cubit.increment(
            CartMock.model.product.id,
          );
        },
        expect: [
          CartState(carts: [
            Cart(
              quantity: 1,
              product: CartMock.model.product,
            )
          ]),
          CartState(carts: [
            Cart(
              quantity: 2,
              product: CartMock.model.product,
            )
          ]),
        ]);
  });
  group("decrement", () {
    blocTest<CartCubit, CartState>("Remove from cart when quantity 0",
        build: () => CartCubit(),
        act: (cubit) {
          cubit.add(
            CartMock.model.product,
          );
          cubit.increment(
            CartMock.model.product.id,
          );
          cubit.decrement(
            CartMock.model.product.id,
          );
        },
        expect: [
          CartState(carts: [
            Cart(
              quantity: 1,
              product: CartMock.model.product,
            )
          ]),
          CartState(carts: [
            Cart(
              quantity: 2,
              product: CartMock.model.product,
            )
          ]),
          CartState(carts: [
            Cart(
              quantity: 1,
              product: CartMock.model.product,
            )
          ])
        ]);
  });
  blocTest<CartCubit, CartState>("Remove from cart when quantity 0",
      build: () => CartCubit(),
      act: (cubit) {
        cubit.add(
          CartMock.model.product,
        );
        cubit.decrement(
          CartMock.model.product.id,
        );
      },
      expect: [
        CartState(carts: [
          Cart(
            quantity: 1,
            product: CartMock.model.product,
          )
        ]),
        CartState(carts: []),
      ]);
}
