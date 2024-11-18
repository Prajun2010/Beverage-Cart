import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_entity.freezed.dart';

part 'order_history_entity.g.dart';

@freezed
class OrderHistoryEntity with _$OrderHistoryEntity {
  const OrderHistoryEntity._();
  const factory OrderHistoryEntity({
    @JsonKey(name: 'order_no') required int orderNo,
    required String distributor,
    required String date,
    required int quantity,
    required String status,
    @JsonKey(name: 'total_amount') required double totalAmount,
    required String url,
  }) = _OrderHistoryEntity;

  factory OrderHistoryEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryEntityFromJson(json);
}
