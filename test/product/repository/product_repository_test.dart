import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

void main() {
  group('ProductRepositoryImpl', () {
    Dio dio;
    ProductRepositoryImpl productRepositoryImpl;

    setUp(() {
      dio = _MockDio();
      productRepositoryImpl = ProductRepositoryImpl(dio);
    });

    group('getAll', () {
      const path = 'products';
      const data = [
        {
          'id': 1,
          'title': 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
          'price': 109.95,
          'description':
              'Your perfect pack for everyday use and walks in the forest. '
                  'Stash your laptop (up to 15 inches) in the padded sleeve, '
                  'your everyday',
          'category': 'men clothing',
          'image': 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg'
        },
        {
          'id': 2,
          'title': 'Mens Casual Premium Slim Fit T-Shirts ',
          'price': 22.3,
          'description':
              'Slim-fitting style, contrast raglan long sleeve, three-button '
                  'henley placket, light weight & soft fabric for breathable '
                  'and comfortable wearing. And Solid stitched shirts with '
                  'round neck made for durability and a great fit for casual '
                  'fashion wear and diehard baseball fans. The Henley style '
                  'round neckline includes a three-button placket.',
          'category': 'men clothing',
          'image':
              'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg'
        },
      ];

      test('should return Products when success', () async {
        when(dio.get(path))
            .thenAnswer((_) async => Response(data: data, statusCode: 200));

        final response = await productRepositoryImpl.getAll();

        expect(response.length, equals(2));
      });

      test('should throw Network error when dio error is thrown', () {
        when(dio.get(path)).thenAnswer(
            (_) async => throw DioError(response: Response(statusCode: 404)));

        expect(productRepositoryImpl.getAll,
            throwsA(equals(const AppError('Network error'))));
      });

      test(
          'should throw Something went wrong when invalid data is returned '
          'from dio', () {
        when(dio.get(path))
            .thenAnswer((_) async => Response(statusCode: 200, data: {}));

        expect(productRepositoryImpl.getAll,
            throwsA(equals(const AppError('Something went wrong.'))));
      });
    });
  });
}

class _MockDio extends Mock implements Dio {}
