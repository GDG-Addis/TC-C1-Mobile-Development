import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

part 'products_cubit.freezed.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductRepository _productRepository;

  ProductsCubit(this._productRepository)
      : assert(_productRepository != null),
        super(const InitialProductsState());

  void filter(ProductCategory category) {
    if (state is ProductsLoadedState) {
      final ProductsLoadedState loadedState = state;
      final products = loadedState.products
          .where((element) => element.category == category)
          .toList();
      emit(ProductsLoadedState(products: products, category: category));
    }
  }

  Future<void> getAll() {
    emit(const ProductsLoadingState());
    return _getAllProducts();
  }

  Future<void> refresh() async {
    emit(const ProductsRefreshingState());
    return _getAllProducts();
  }

  Future<void> _getAllProducts() async {
    try {
      final products = await _productRepository.getAll();
      emit(ProductsLoadedState(products: products));
    } on AppError catch (error) {
      emit(ProductsErrorState(error: error.message));
    }
  }
}
