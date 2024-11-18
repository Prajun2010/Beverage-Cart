import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_history_entity.freezed.dart';

part 'product_history_entity.g.dart';

@freezed
class ProductHistoryEntity with _$ProductHistoryEntity {
  const ProductHistoryEntity._();
  const factory ProductHistoryEntity({
    required String image,
    required String name,
    required String detail,
    required int quantity,
    required bool delivered,
    @JsonKey(name: 'line_total') required double lineTotal,
  }) = _ProductHistoryEntity;

  factory ProductHistoryEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductHistoryEntityFromJson(json);
}
