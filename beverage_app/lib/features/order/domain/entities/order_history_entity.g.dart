// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderHistoryEntity _$$_OrderHistoryEntityFromJson(
        Map<String, dynamic> json) =>
    _$_OrderHistoryEntity(
      orderNo: json['order_no'] as int,
      distributor: json['distributor'] as String,
      date: json['date'] as String,
      quantity: json['quantity'] as int,
      status: json['status'] as String,
      totalAmount: (json['total_amount'] as num).toDouble(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_OrderHistoryEntityToJson(
        _$_OrderHistoryEntity instance) =>
    <String, dynamic>{
      'order_no': instance.orderNo,
      'distributor': instance.distributor,
      'date': instance.date,
      'quantity': instance.quantity,
      'status': instance.status,
      'total_amount': instance.totalAmount,
      'url': instance.url,
    };
