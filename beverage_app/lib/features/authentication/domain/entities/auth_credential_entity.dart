import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_credential_entity.freezed.dart';

part 'auth_credential_entity.g.dart';

@freezed
class AuthCredentialEntity with _$AuthCredentialEntity {
  const AuthCredentialEntity._();
  const factory AuthCredentialEntity({
    required String token,
  }) = _AuthCredentialEntity;

  factory AuthCredentialEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthCredentialEntityFromJson(json);
}
