import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

GetIt getIt = GetIt.instance;

void registerDependencies() {
  _registerConfigurations();
  _registerProduct();
  _registerProfile();
}

void _registerConfigurations() {
  getIt
    ..registerSingleton(
      Dio(
        BaseOptions(
          baseUrl: 'https://fakestoreapi.com/',
          connectTimeout: 20000,
          receiveTimeout: 30000,
          sendTimeout: 30000,
        ),
      ),
    );
}

void _registerProduct() {
  getIt
    ..registerFactory<ProductRepository>(() => ProductRepositoryImpl(getIt()))
    ..registerFactory(() => ProductsCubit(getIt()));
}

void _registerProfile() {
  getIt
    ..registerFactory<ProfileRepository>(() => ProfileRepositoryImpl(getIt()))
    ..registerFactory(() => ProfileCubit(getIt()));
}
