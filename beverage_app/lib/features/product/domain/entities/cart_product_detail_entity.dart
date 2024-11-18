import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product_detail_entity.freezed.dart';

part 'cart_product_detail_entity.g.dart';

@freezed
class CartProductDetailEntity with _$CartProductDetailEntity {
  const CartProductDetailEntity._();
  const factory CartProductDetailEntity({
    @JsonKey(name: 'product_id') required int productId,
    required String image,
    required String name,
    required String detail,
    required int quantity,
    @JsonKey(name: 'line_total') required double lineTotal,
  }) = _CartProductDetailEntity;

  factory CartProductDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$CartProductDetailEntityFromJson(json);
}
