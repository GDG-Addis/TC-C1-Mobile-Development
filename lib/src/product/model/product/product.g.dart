// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    id: json['id'] as int,
    title: json['title'] as String,
    image: json['image'] as String,
    price: (json['price'] as num)?.toDouble(),
    description: json['description'] as String,
    category: const CategoryConverter().fromJson(json['category'] as String),
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'description': instance.description,
      'category': const CategoryConverter().toJson(instance.category),
    };
