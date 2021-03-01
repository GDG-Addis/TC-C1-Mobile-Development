import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techamp_flutter_shopping_app/app.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @required int id,
    @required String title,
    @required String image,
    @required double price,
    @required String description,
    @required @CategoryConverter() ProductCategory category,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
