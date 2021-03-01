import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

import '../model/profile/mock.dart';

void main() {
  group('ProfileRepository', () {
    Dio dio;
    ProfileRepositoryImpl productRepositoryImpl;

    setUp(() {
      dio = _MockDio();
      productRepositoryImpl = ProfileRepositoryImpl(dio);
    });

    group('get', () {
      const path = 'users/1';

      test('should return Products when success', () async {
        when(dio.get(path)).thenAnswer(
          (_) async => Response(
            data: ProfileMock.json,
            statusCode: 200,
          ),
        );

        final response = await productRepositoryImpl.get();

        expect(response, ProfileMock.model);
      });

      test('should throw Network error when dio error is thrown', () {
        when(dio.get(path)).thenAnswer(
          (_) async => throw DioError(
            response: Response(statusCode: 404),
          ),
        );

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
