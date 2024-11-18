import 'package:beverage_app/features/product/domain/entities/cart_product_detail_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_cart_entity.freezed.dart';

part 'product_cart_entity.g.dart';

@freezed
class ProductCartEntity with _$ProductCartEntity {
  const ProductCartEntity._();

  const factory ProductCartEntity({
    @JsonKey(name: 'sub_total') required double subTotal,
    required double tax,
    @JsonKey(name: 'total_amount') required double totalAmount,
    @JsonKey(name: 'total_item') required int totalItem,
    required List<CartProductDetailEntity> products,
  }) = _ProductCartEntity;

  factory ProductCartEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductCartEntityFromJson(json);
}
