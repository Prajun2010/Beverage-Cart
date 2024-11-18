// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannerEntity _$$_BannerEntityFromJson(Map<String, dynamic> json) =>
    _$_BannerEntity(
      bannerImage: json['banner_image'] as String,
      mrp: (json['mrp'] as num).toDouble(),
      margin: json['margin'] as int,
      id: json['id'] as int,
      brand: json['brand'] as String,
      name: json['name'] as String,
      quantity: json['quantity'] as String,
      cartoonDetail: json['cartoon_detail'] as String,
      productImage: json['image'] as String,
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

Map<String, dynamic> _$$_BannerEntityToJson(_$_BannerEntity instance) =>
    <String, dynamic>{
      'banner_image': instance.bannerImage,
      'mrp': instance.mrp,
      'margin': instance.margin,
      'id': instance.id,
      'brand': instance.brand,
      'name': instance.name,
      'quantity': instance.quantity,
      'cartoon_detail': instance.cartoonDetail,
      'image': instance.productImage,
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
