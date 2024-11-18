import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_entity.freezed.dart';

part 'banner_entity.g.dart';

@freezed
class BannerEntity with _$BannerEntity {
  const BannerEntity._();
  const factory BannerEntity({
    @JsonKey(name: 'banner_image') required String bannerImage,
    required double mrp,
    required int margin,
    required int id,
    required String brand,
    required String name,
    required String quantity,
    @JsonKey(name: 'cartoon_detail') required String cartoonDetail,
    @JsonKey(name: 'image') required String productImage,
    required double price,
    required String code,
    required int stock,
    @JsonKey(name: 'tax_percentage') required double taxPercentage,
    @JsonKey(name: 'pack_size') required int packSize,
    required String description,
    @JsonKey(name: 'special_price') double? specialPrice,
    @JsonKey(name: 'discounted_price') double? discountedPrice,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
  }) = _BannerEntity;

  factory BannerEntity.fromJson(Map<String, dynamic> json) =>
      _$BannerEntityFromJson(json);
}
