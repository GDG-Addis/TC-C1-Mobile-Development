// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductsStateTearOff {
  const _$ProductsStateTearOff();

// ignore: unused_element
  ProductsErrorState error({@required String error}) {
    return ProductsErrorState(
      error: error,
    );
  }

// ignore: unused_element
  ProductsRefreshingState refreshing() {
    return const ProductsRefreshingState();
  }

// ignore: unused_element
  InitialProductsState initial() {
    return const InitialProductsState();
  }

// ignore: unused_element
  ProductsLoadedState loaded({@required List<Product> products}) {
    return ProductsLoadedState(
      products: products,
    );
  }

// ignore: unused_element
  ProductsLoadingState loading() {
    return const ProductsLoadingState();
  }
}

/// @nodoc
// ignore: unused_element
const $ProductsState = _$ProductsStateTearOff();

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(List<Product> products),
    @required TResult loading(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(List<Product> products),
    TResult loading(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProductsErrorState value),
    @required TResult refreshing(ProductsRefreshingState value),
    @required TResult initial(InitialProductsState value),
    @required TResult loaded(ProductsLoadedState value),
    @required TResult loading(ProductsLoadingState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProductsErrorState value),
    TResult refreshing(ProductsRefreshingState value),
    TResult initial(InitialProductsState value),
    TResult loaded(ProductsLoadedState value),
    TResult loading(ProductsLoadingState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  final ProductsState _value;
  // ignore: unused_field
  final $Res Function(ProductsState) _then;
}

/// @nodoc
abstract class $ProductsErrorStateCopyWith<$Res> {
  factory $ProductsErrorStateCopyWith(
          ProductsErrorState value, $Res Function(ProductsErrorState) then) =
      _$ProductsErrorStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ProductsErrorStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsErrorStateCopyWith<$Res> {
  _$ProductsErrorStateCopyWithImpl(
      ProductsErrorState _value, $Res Function(ProductsErrorState) _then)
      : super(_value, (v) => _then(v as ProductsErrorState));

  @override
  ProductsErrorState get _value => super._value as ProductsErrorState;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ProductsErrorState(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$ProductsErrorState implements ProductsErrorState {
  const _$ProductsErrorState({@required this.error}) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'ProductsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductsErrorState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ProductsErrorStateCopyWith<ProductsErrorState> get copyWith =>
      _$ProductsErrorStateCopyWithImpl<ProductsErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(List<Product> products),
    @required TResult loading(),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(List<Product> products),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProductsErrorState value),
    @required TResult refreshing(ProductsRefreshingState value),
    @required TResult initial(InitialProductsState value),
    @required TResult loaded(ProductsLoadedState value),
    @required TResult loading(ProductsLoadingState value),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProductsErrorState value),
    TResult refreshing(ProductsRefreshingState value),
    TResult initial(InitialProductsState value),
    TResult loaded(ProductsLoadedState value),
    TResult loading(ProductsLoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductsErrorState implements ProductsState {
  const factory ProductsErrorState({@required String error}) =
      _$ProductsErrorState;

  String get error;
  @JsonKey(ignore: true)
  $ProductsErrorStateCopyWith<ProductsErrorState> get copyWith;
}

/// @nodoc
abstract class $ProductsRefreshingStateCopyWith<$Res> {
  factory $ProductsRefreshingStateCopyWith(ProductsRefreshingState value,
          $Res Function(ProductsRefreshingState) then) =
      _$ProductsRefreshingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsRefreshingStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsRefreshingStateCopyWith<$Res> {
  _$ProductsRefreshingStateCopyWithImpl(ProductsRefreshingState _value,
      $Res Function(ProductsRefreshingState) _then)
      : super(_value, (v) => _then(v as ProductsRefreshingState));

  @override
  ProductsRefreshingState get _value => super._value as ProductsRefreshingState;
}

/// @nodoc
class _$ProductsRefreshingState implements ProductsRefreshingState {
  const _$ProductsRefreshingState();

  @override
  String toString() {
    return 'ProductsState.refreshing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductsRefreshingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(List<Product> products),
    @required TResult loading(),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return refreshing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(List<Product> products),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshing != null) {
      return refreshing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProductsErrorState value),
    @required TResult refreshing(ProductsRefreshingState value),
    @required TResult initial(InitialProductsState value),
    @required TResult loaded(ProductsLoadedState value),
    @required TResult loading(ProductsLoadingState value),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProductsErrorState value),
    TResult refreshing(ProductsRefreshingState value),
    TResult initial(InitialProductsState value),
    TResult loaded(ProductsLoadedState value),
    TResult loading(ProductsLoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class ProductsRefreshingState implements ProductsState {
  const factory ProductsRefreshingState() = _$ProductsRefreshingState;
}

/// @nodoc
abstract class $InitialProductsStateCopyWith<$Res> {
  factory $InitialProductsStateCopyWith(InitialProductsState value,
          $Res Function(InitialProductsState) then) =
      _$InitialProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialProductsStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $InitialProductsStateCopyWith<$Res> {
  _$InitialProductsStateCopyWithImpl(
      InitialProductsState _value, $Res Function(InitialProductsState) _then)
      : super(_value, (v) => _then(v as InitialProductsState));

  @override
  InitialProductsState get _value => super._value as InitialProductsState;
}

/// @nodoc
class _$InitialProductsState implements InitialProductsState {
  const _$InitialProductsState();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialProductsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(List<Product> products),
    @required TResult loading(),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(List<Product> products),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProductsErrorState value),
    @required TResult refreshing(ProductsRefreshingState value),
    @required TResult initial(InitialProductsState value),
    @required TResult loaded(ProductsLoadedState value),
    @required TResult loading(ProductsLoadingState value),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProductsErrorState value),
    TResult refreshing(ProductsRefreshingState value),
    TResult initial(InitialProductsState value),
    TResult loaded(ProductsLoadedState value),
    TResult loading(ProductsLoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialProductsState implements ProductsState {
  const factory InitialProductsState() = _$InitialProductsState;
}

/// @nodoc
abstract class $ProductsLoadedStateCopyWith<$Res> {
  factory $ProductsLoadedStateCopyWith(
          ProductsLoadedState value, $Res Function(ProductsLoadedState) then) =
      _$ProductsLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductsLoadedStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsLoadedStateCopyWith<$Res> {
  _$ProductsLoadedStateCopyWithImpl(
      ProductsLoadedState _value, $Res Function(ProductsLoadedState) _then)
      : super(_value, (v) => _then(v as ProductsLoadedState));

  @override
  ProductsLoadedState get _value => super._value as ProductsLoadedState;

  @override
  $Res call({
    Object products = freezed,
  }) {
    return _then(ProductsLoadedState(
      products:
          products == freezed ? _value.products : products as List<Product>,
    ));
  }
}

/// @nodoc
class _$ProductsLoadedState implements ProductsLoadedState {
  const _$ProductsLoadedState({@required this.products})
      : assert(products != null);

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductsState.loaded(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductsLoadedState &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  $ProductsLoadedStateCopyWith<ProductsLoadedState> get copyWith =>
      _$ProductsLoadedStateCopyWithImpl<ProductsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(List<Product> products),
    @required TResult loading(),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return loaded(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(List<Product> products),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProductsErrorState value),
    @required TResult refreshing(ProductsRefreshingState value),
    @required TResult initial(InitialProductsState value),
    @required TResult loaded(ProductsLoadedState value),
    @required TResult loading(ProductsLoadingState value),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProductsErrorState value),
    TResult refreshing(ProductsRefreshingState value),
    TResult initial(InitialProductsState value),
    TResult loaded(ProductsLoadedState value),
    TResult loading(ProductsLoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadedState implements ProductsState {
  const factory ProductsLoadedState({@required List<Product> products}) =
      _$ProductsLoadedState;

  List<Product> get products;
  @JsonKey(ignore: true)
  $ProductsLoadedStateCopyWith<ProductsLoadedState> get copyWith;
}

/// @nodoc
abstract class $ProductsLoadingStateCopyWith<$Res> {
  factory $ProductsLoadingStateCopyWith(ProductsLoadingState value,
          $Res Function(ProductsLoadingState) then) =
      _$ProductsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsLoadingStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsLoadingStateCopyWith<$Res> {
  _$ProductsLoadingStateCopyWithImpl(
      ProductsLoadingState _value, $Res Function(ProductsLoadingState) _then)
      : super(_value, (v) => _then(v as ProductsLoadingState));

  @override
  ProductsLoadingState get _value => super._value as ProductsLoadingState;
}

/// @nodoc
class _$ProductsLoadingState implements ProductsLoadingState {
  const _$ProductsLoadingState();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(String error),
    @required TResult refreshing(),
    @required TResult initial(),
    @required TResult loaded(List<Product> products),
    @required TResult loading(),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(String error),
    TResult refreshing(),
    TResult initial(),
    TResult loaded(List<Product> products),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(ProductsErrorState value),
    @required TResult refreshing(ProductsRefreshingState value),
    @required TResult initial(InitialProductsState value),
    @required TResult loaded(ProductsLoadedState value),
    @required TResult loading(ProductsLoadingState value),
  }) {
    assert(error != null);
    assert(refreshing != null);
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(ProductsErrorState value),
    TResult refreshing(ProductsRefreshingState value),
    TResult initial(InitialProductsState value),
    TResult loaded(ProductsLoadedState value),
    TResult loading(ProductsLoadingState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadingState implements ProductsState {
  const factory ProductsLoadingState() = _$ProductsLoadingState;
}
