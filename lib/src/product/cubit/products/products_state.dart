part of 'products_cubit.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.error({@required String error}) =
      ProductsErrorState;

  const factory ProductsState.refreshing() = ProductsRefreshingState;

  const factory ProductsState.initial() = InitialProductsState;

  const factory ProductsState.loaded({
    ProductCategory category,
    @required List<Product> products,
  }) = ProductsLoadedState;

  const factory ProductsState.loading() = ProductsLoadingState;
}
