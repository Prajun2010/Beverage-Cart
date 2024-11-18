// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartProductDetailEntity _$$_CartProductDetailEntityFromJson(
        Map<String, dynamic> json) =>
    _$_CartProductDetailEntity(
      productId: json['product_id'] as int,
      image: json['image'] as String,
      name: json['name'] as String,
      detail: json['detail'] as String,
      quantity: json['quantity'] as int,
      lineTotal: (json['line_total'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CartProductDetailEntityToJson(
        _$_CartProductDetailEntity instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'image': instance.image,
      'name': instance.name,
      'detail': instance.detail,
      'quantity': instance.quantity,
      'line_total': instance.lineTotal,
    };
