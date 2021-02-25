import 'package:dio/dio.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

abstract class ProductRepository {
  Future<List<Product>> getAll();
}

class ProductRepositoryImpl implements ProductRepository {
  final Dio _dio;

  const ProductRepositoryImpl(this._dio) : assert(_dio != null);

  @override
  Future<List<Product>> getAll() async {
    try {
      final response = await _dio.get('products');
      List productsJson = response.data;
      return productsJson.map((json) => Product.fromJson(json)).toList();
    } on DioError catch (_) {
      throw 'Network error';
    } catch (_) {
      throw 'Something went wrong.';
    }
  }
}
