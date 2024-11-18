import 'package:beverage_app/features/order/domain/entities/product_history_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_entity.freezed.dart';

part 'order_details_entity.g.dart';

@freezed
class OrderDetailsEntity with _$OrderDetailsEntity {
  const OrderDetailsEntity._();
  const factory OrderDetailsEntity({
    @JsonKey(name: 'order_no') required int orderNo,
    required String date,
    required String distributor,
    required String address,
    required String status,
    @JsonKey(name: 'sub_total') required double subTotal,
    required double tax,
    @JsonKey(name: 'total_amount') required double totalAmount,
    required String reorder,
    required List<ProductHistoryEntity> products,
  }) = _OrderDetailsEntity;

  factory OrderDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsEntityFromJson(json);
}
