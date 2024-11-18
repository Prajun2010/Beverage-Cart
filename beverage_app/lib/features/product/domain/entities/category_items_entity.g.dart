// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_items_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryItemsEntity _$$_CategoryItemsEntityFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryItemsEntity(
      id: json['id'] as int,
      brand: json['brand'] as String,
      name: json['name'] as String,
      quantity: json['quantity'] as String,
      cartoonDetail: json['cartoon_detail'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      code: json['code'] as String,
      stock: json['stock'] as int,
      taxPercentage: (json['tax_percentage'] as num).toDouble(),
      packSize: json['pack_size'] as int,
      description: json['description'] as String,
      specialPrice: (json['special_price'] as num?)?.toDouble(),
      discountedPrice: (json['discounted_price'] as num?)?.toDouble(),
      discountPercentage: (json['discount_percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CategoryItemsEntityToJson(
        _$_CategoryItemsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'name': instance.name,
      'quantity': instance.quantity,
      'cartoon_detail': instance.cartoonDetail,
      'image': instance.image,
      'price': instance.price,
      'code': instance.code,
      'stock': instance.stock,
      'tax_percentage': instance.taxPercentage,
      'pack_size': instance.packSize,
      'description': instance.description,
      'special_price': instance.specialPrice,
      'discounted_price': instance.discountedPrice,
      'discount_percentage': instance.discountPercentage,
    };
