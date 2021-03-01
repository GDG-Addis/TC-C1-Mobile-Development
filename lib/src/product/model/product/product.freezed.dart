// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

// ignore: unused_element
  _Product call(
      {@required int id,
      @required String title,
      @required String image,
      @required double price,
      @required String description,
      @required @CategoryConverter() ProductCategory category}) {
    return _Product(
      id: id,
      title: title,
      image: image,
      price: price,
      description: description,
      category: category,
    );
  }

// ignore: unused_element
  Product fromJson(Map<String, Object> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  int get id;
  String get title;
  String get image;
  double get price;
  String get description;
  @CategoryConverter()
  ProductCategory get category;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String image,
      double price,
      String description,
      @CategoryConverter() ProductCategory category});

  $ProductCategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object image = freezed,
    Object price = freezed,
    Object description = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      image: image == freezed ? _value.image : image as String,
      price: price == freezed ? _value.price : price as double,
      description:
          description == freezed ? _value.description : description as String,
      category:
          category == freezed ? _value.category : category as ProductCategory,
    ));
  }

  @override
  $ProductCategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $ProductCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String image,
      double price,
      String description,
      @CategoryConverter() ProductCategory category});

  @override
  $ProductCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object image = freezed,
    Object price = freezed,
    Object description = freezed,
    Object category = freezed,
  }) {
    return _then(_Product(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      image: image == freezed ? _value.image : image as String,
      price: price == freezed ? _value.price : price as double,
      description:
          description == freezed ? _value.description : description as String,
      category:
          category == freezed ? _value.category : category as ProductCategory,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Product with DiagnosticableTreeMixin implements _Product {
  const _$_Product(
      {@required this.id,
      @required this.title,
      @required this.image,
      @required this.price,
      @required this.description,
      @required @CategoryConverter() this.category})
      : assert(id != null),
        assert(title != null),
        assert(image != null),
        assert(price != null),
        assert(description != null),
        assert(category != null);

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;
  @override
  final double price;
  @override
  final String description;
  @override
  @CategoryConverter()
  final ProductCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product(id: $id, title: $title, image: $image, price: $price, description: $description, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@required int id,
      @required String title,
      @required String image,
      @required double price,
      @required String description,
      @required @CategoryConverter() ProductCategory category}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  double get price;
  @override
  String get description;
  @override
  @CategoryConverter()
  ProductCategory get category;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith;
}
