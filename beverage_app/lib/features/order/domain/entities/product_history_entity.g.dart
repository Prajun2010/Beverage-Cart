// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_history_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductHistoryEntity _$$_ProductHistoryEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ProductHistoryEntity(
      image: json['image'] as String,
      name: json['name'] as String,
      detail: json['detail'] as String,
      quantity: json['quantity'] as int,
      delivered: json['delivered'] as bool,
      lineTotal: (json['line_total'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ProductHistoryEntityToJson(
        _$_ProductHistoryEntity instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'detail': instance.detail,
      'quantity': instance.quantity,
      'delivered': instance.delivered,
      'line_total': instance.lineTotal,
    };
