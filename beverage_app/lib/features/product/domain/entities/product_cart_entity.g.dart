// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_cart_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCartEntity _$$_ProductCartEntityFromJson(Map<String, dynamic> json) =>
    _$_ProductCartEntity(
      subTotal: (json['sub_total'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      totalAmount: (json['total_amount'] as num).toDouble(),
      totalItem: json['total_item'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) =>
              CartProductDetailEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductCartEntityToJson(
        _$_ProductCartEntity instance) =>
    <String, dynamic>{
      'sub_total': instance.subTotal,
      'tax': instance.tax,
      'total_amount': instance.totalAmount,
      'total_item': instance.totalItem,
      'products': instance.products,
    };
