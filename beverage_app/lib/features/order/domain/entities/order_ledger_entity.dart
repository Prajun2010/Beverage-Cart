import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_ledger_entity.freezed.dart';

part 'order_ledger_entity.g.dart';

@freezed
class OrderLedgerEntity with _$OrderLedgerEntity {
  const OrderLedgerEntity._();
  const factory OrderLedgerEntity({
    @JsonKey(name: 'transaction_name') required String transactionName,
    @JsonKey(name: 'transaction_type') required String transactionType,
    required double amount,
    required String date,
  }) = _OrderLedgerEntity;

  factory OrderLedgerEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderLedgerEntityFromJson(json);
}
