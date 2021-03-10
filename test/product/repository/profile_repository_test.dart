import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

void main() {
  group('ProfileRepository', () {
    Dio dio;
    ProfileRepositoryImpl productRepositoryImpl;

    setUp(() {
      dio = _MockDio();
      productRepositoryImpl = ProfileRepositoryImpl(dio);
    });

    test('should throw AssertionError when dio is null', () {
      expect(() => ProfileRepositoryImpl(null), throwsAssertionError);
    });

    group('get', () {
      const path = 'users/1';
      const json = {
        'id': 1,
        'email': 'John@gmail.com',
        'username': 'johnd',
        'password': 'm38rmF\$',
        'name': {'firstname': 'John', 'lastname': 'Doe'},
        'address': {
          'city': 'kilcoole',
          'street': '7835 new road',
          'number': 3,
          'zipcode': '12926-3874',
          'geolocation': {'lat': '-37.3159', 'long': '81.1496'}
        },
        'phone': '1-570-236-7033'
      };

      test('should return Products when success', () async {
        when(dio.get(path))
            .thenAnswer((_) async => Response(data: json, statusCode: 200));

        final response = await productRepositoryImpl.get();

        expect(response, isA<Profile>());
      });

      test('should throw Network error when dio error is thrown', () {
        when(dio.get(path)).thenAnswer(
            (_) async => throw DioError(response: Response(statusCode: 404)));

        expect(productRepositoryImpl.get, throwsA(equals('Network error')));
      });

      test(
          'should throw Something went wrong when invalid data is returned from dio',
          () {
        when(dio.get(path))
            .thenAnswer((_) async => Response(statusCode: 200, data: {}));

        expect(productRepositoryImpl.get,
            throwsA(equals('Something went wrong.')));
      });
    });
  });
}

class _MockDio extends Mock implements Dio {}
