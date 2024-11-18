// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_ledger_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderLedgerEntity _$$_OrderLedgerEntityFromJson(Map<String, dynamic> json) =>
    _$_OrderLedgerEntity(
      transactionName: json['transaction_name'] as String,
      transactionType: json['transaction_type'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: json['date'] as String,
    );

Map<String, dynamic> _$$_OrderLedgerEntityToJson(
        _$_OrderLedgerEntity instance) =>
    <String, dynamic>{
      'transaction_name': instance.transactionName,
      'transaction_type': instance.transactionType,
      'amount': instance.amount,
      'date': instance.date,
    };
