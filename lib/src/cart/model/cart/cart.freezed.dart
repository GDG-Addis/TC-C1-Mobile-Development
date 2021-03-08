// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
class _$CartTearOff {
  const _$CartTearOff();

// ignore: unused_element
  _Cart call({@required int quantity, @required Product product}) {
    return _Cart(
      quantity: quantity,
      product: product,
    );
  }

// ignore: unused_element
  Cart fromJson(Map<String, Object> json) {
    return Cart.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Cart = _$CartTearOff();

/// @nodoc
mixin _$Cart {
  int get quantity;
  Product get product;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res>;
  $Res call({int quantity, Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  final Cart _value;
  // ignore: unused_field
  final $Res Function(Cart) _then;

  @override
  $Res call({
    Object quantity = freezed,
    Object product = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      product: product == freezed ? _value.product : product as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    if (_value.product == null) {
      return null;
    }
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) then) =
      __$CartCopyWithImpl<$Res>;
  @override
  $Res call({int quantity, Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(_Cart _value, $Res Function(_Cart) _then)
      : super(_value, (v) => _then(v as _Cart));

  @override
  _Cart get _value => super._value as _Cart;

  @override
  $Res call({
    Object quantity = freezed,
    Object product = freezed,
  }) {
    return _then(_Cart(
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      product: product == freezed ? _value.product : product as Product,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Cart implements _Cart {
  _$_Cart({@required this.quantity, @required this.product})
      : assert(quantity != null),
        assert(product != null);

  factory _$_Cart.fromJson(Map<String, dynamic> json) =>
      _$_$_CartFromJson(json);

  @override
  final int quantity;
  @override
  final Product product;

  @override
  String toString() {
    return 'Cart(quantity: $quantity, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cart &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  _$CartCopyWith<_Cart> get copyWith =>
      __$CartCopyWithImpl<_Cart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartToJson(this);
  }
}

abstract class _Cart implements Cart {
  factory _Cart({@required int quantity, @required Product product}) = _$_Cart;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$_Cart.fromJson;

  @override
  int get quantity;
  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$CartCopyWith<_Cart> get copyWith;
}
