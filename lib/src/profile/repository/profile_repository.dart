import 'package:dio/dio.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

abstract class ProfileRepository {
  Future<Profile> get();
}

class ProfileRepositoryImpl implements ProfileRepository {
  final Dio _dio;

  const ProfileRepositoryImpl(this._dio) : assert(_dio != null);

  @override
  Future<Profile> get() async {
    try {
      final response = await _dio.get('users/1');
      return Profile.fromJson(response.data);
    } on DioError catch (_) {
      throw const AppError('Network error');
    } on dynamic catch (_) {
      throw const AppError('Something went wrong.');
    }
  }
}
