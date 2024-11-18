// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_categories_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCategoriesEntity _$$_ProductCategoriesEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ProductCategoriesEntity(
      name: json['name'] as String,
      image: json['image'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => CategoryItemsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductCategoriesEntityToJson(
        _$_ProductCategoriesEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'products': instance.products,
    };
