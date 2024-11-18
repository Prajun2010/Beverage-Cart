import 'package:beverage_app/features/product/domain/entities/category_items_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_categories_entity.freezed.dart';

part 'product_categories_entity.g.dart';

@freezed
class ProductCategoriesEntity with _$ProductCategoriesEntity {
  const ProductCategoriesEntity._();
  const factory ProductCategoriesEntity({
    required String name,
    required String image,
    required List<CategoryItemsEntity> products,
  }) = _ProductCategoriesEntity;

  factory ProductCategoriesEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoriesEntityFromJson(json);
}
