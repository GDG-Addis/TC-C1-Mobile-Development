import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

void main() {
  group('ProductsCubit', () {
    ProductsCubit productsCubit;
    ProductRepository productRepository;

    setUp(() {
      productRepository = _MockProductRepository();
      productsCubit = ProductsCubit(productRepository);
    });

    tearDown(() {
      productsCubit?.close();
    });

    test('should throw AssertionError when productRepository is null', () {
      expect(() => ProductsCubit(null), throwsAssertionError);
    });

    group('getAll', () {
      const error = AppError('Something went wrong');

      blocTest<ProductsCubit, ProductsState>(
        'should emit [ ProductsLoadingState, ProductsLoadedState ] when '
        'products are loaded',
        build: () {
          when(productRepository.getAll()).thenAnswer((_) async => []);
          return productsCubit;
        },
        act: (cubit) => cubit.getAll(),
        expect: [
          const ProductsLoadingState(),
          const ProductsLoadedState(products: []),
        ],
      );

      blocTest<ProductsCubit, ProductsState>(
        'should emit [ ProductsLoadingState, ProductsErrorState ] when error is'
        ' thrown',
        build: () {
          when(productRepository.getAll()).thenAnswer((_) async => throw error);
          return productsCubit;
        },
        act: (cubit) => cubit.getAll(),
        expect: [
          const ProductsLoadingState(),
          ProductsErrorState(error: error.message),
        ],
      );
    });

    group('refresh', () {
      const error = AppError('Something went wrong');

      blocTest<ProductsCubit, ProductsState>(
        'should emit [ ProductsRefreshingState, ProductsLoadedState ] when '
        'products are loaded',
        build: () {
          when(productRepository.getAll()).thenAnswer((_) async => []);
          return productsCubit;
        },
        act: (cubit) => cubit.refresh(),
        expect: [
          const ProductsRefreshingState(),
          const ProductsLoadedState(products: []),
        ],
      );

      blocTest<ProductsCubit, ProductsState>(
        'should emit [ ProductsRefreshingState, ProductsErrorState ] when error'
        ' is thrown',
        build: () {
          when(productRepository.getAll()).thenAnswer((_) async => throw error);
          return productsCubit;
        },
        act: (cubit) => cubit.refresh(),
        expect: [
          const ProductsRefreshingState(),
          ProductsErrorState(error: error.message),
        ],
      );
    });
  });
}

class _MockProductRepository extends Mock implements ProductRepository {}
