// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileEntity _$$_ProfileEntityFromJson(Map<String, dynamic> json) =>
    _$_ProfileEntity(
      tradeName: json['trade_name'] as String,
      outletName: json['outlet_name'] as String,
      creditLimit: (json['credit_limit'] as num).toDouble(),
      outstandingBalance: (json['outstanding_balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ProfileEntityToJson(_$_ProfileEntity instance) =>
    <String, dynamic>{
      'trade_name': instance.tradeName,
      'outlet_name': instance.outletName,
      'credit_limit': instance.creditLimit,
      'outstanding_balance': instance.outstandingBalance,
    };
