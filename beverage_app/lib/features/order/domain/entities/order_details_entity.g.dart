// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailsEntity _$$_OrderDetailsEntityFromJson(
        Map<String, dynamic> json) =>
    _$_OrderDetailsEntity(
      orderNo: json['order_no'] as int,
      date: json['date'] as String,
      distributor: json['distributor'] as String,
      address: json['address'] as String,
      status: json['status'] as String,
      subTotal: (json['sub_total'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      totalAmount: (json['total_amount'] as num).toDouble(),
      reorder: json['reorder'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductHistoryEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderDetailsEntityToJson(
        _$_OrderDetailsEntity instance) =>
    <String, dynamic>{
      'order_no': instance.orderNo,
      'date': instance.date,
      'distributor': instance.distributor,
      'address': instance.address,
      'status': instance.status,
      'sub_total': instance.subTotal,
      'tax': instance.tax,
      'total_amount': instance.totalAmount,
      'reorder': instance.reorder,
      'products': instance.products,
    };
