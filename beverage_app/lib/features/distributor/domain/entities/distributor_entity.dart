import 'package:freezed_annotation/freezed_annotation.dart';

part 'distributor_entity.freezed.dart';

part 'distributor_entity.g.dart';

@freezed
class DistributorEntity with _$DistributorEntity {
  const DistributorEntity._();
  const factory DistributorEntity({
    required String distributor,
    required String url,
    required String gstin,
  }) = _DistributorEntity;

  factory DistributorEntity.fromJson(Map<String, dynamic> json) =>
      _$DistributorEntityFromJson(json);
}
