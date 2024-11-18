import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_entity.freezed.dart';
part 'profile_entity.g.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const ProfileEntity._();
  const factory ProfileEntity({
    @JsonKey(name: 'trade_name') required String tradeName,
    @JsonKey(name: 'outlet_name') required String outletName,
    @JsonKey(name: 'credit_limit') required double creditLimit,
    @JsonKey(name: 'outstanding_balance') required double outstandingBalance,
  }) = _ProfileEntity;

  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);
}
