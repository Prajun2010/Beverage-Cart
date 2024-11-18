import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_detail_entity.freezed.dart';

part 'link_detail_entity.g.dart';

@freezed
class LinkDetailEntity with _$LinkDetailEntity {
  const LinkDetailEntity._();
  const factory LinkDetailEntity({
    required int id,
    required String link,
    @JsonKey(name: 'name') required String linkType,
  }) = _LinkDetailEntity;

  factory LinkDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$LinkDetailEntityFromJson(json);
}
