import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_items_entity.freezed.dart';

part 'category_items_entity.g.dart';

@freezed
class CategoryItemsEntity with _$CategoryItemsEntity {
  const CategoryItemsEntity._();
  const factory CategoryItemsEntity({
    required int id,
    required String brand,
    required String name,
    required String quantity,
    @JsonKey(name: 'cartoon_detail') required String cartoonDetail,
    required String image,
    required double price,
    required String code,
    required int stock,
    @JsonKey(name: 'tax_percentage') required double taxPercentage,
    @JsonKey(name: 'pack_size') required int packSize,
    required String description,
    @JsonKey(name: 'special_price') double? specialPrice,
    @JsonKey(name: 'discounted_price') double? discountedPrice,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
  }) = _CategoryItemsEntity;

  factory CategoryItemsEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemsEntityFromJson(json);
}
