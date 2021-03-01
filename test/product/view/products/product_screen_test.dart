import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

void main() {
  group('ProductsScreen', () {
    ProductsCubit productsCubit;

    setUp(() {
      productsCubit = _MockProductsCubit();
      getIt.registerFactory(() => productsCubit);
    });

    tearDown(() {
      productsCubit?.close();
      getIt.reset();
    });

    testWidgets('should show progress indicator on initial view',
        (tester) async {
      when(productsCubit.state).thenReturn(const InitialProductsState());
      await tester.pumpWidget(
        MaterialApp(
          home: ProductsScreen(),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should show products when loaded successfully',
        (tester) async {
      const products = [
        Product(
          id: 1,
          title: 'Fjallraven',
          image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
          price: 109.95,
          description: 'Your perfect pack for everyday use.',
          category: MenClothingProductCategory(),
        ),
        Product(
          id: 2,
          title: 'Mens Casual Premium T-Shirts',
          image:
              'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
          price: 22.5,
          description: 'Slim-fitting style.',
          category: MenClothingProductCategory(),
        )
      ];
      when(productsCubit.state)
          .thenReturn(const ProductsLoadedState(products: products));

      // Fixes Image.network network exception
      HttpOverrides.global = null;

      await tester.pumpWidget(
        MaterialApp(
          home: ProductsScreen(),
        ),
      );

      expect(find.text(products.first.title), findsOneWidget);
      expect(find.text('${products.first.price} ETB'), findsOneWidget);

      expect(find.text(products.last.title), findsOneWidget);
      expect(find.text('${products.last.price} ETB'), findsOneWidget);
    });
  });
}

class _MockProductsCubit extends Mock implements ProductsCubit {}
