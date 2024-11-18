import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../../../core/infrastructure/securepoints.dart';
import '../../domain/entities/auth_credential_entity.dart';

abstract class IAuthenticationLocalDataSource {
  Future<Either<Failure, Unit>> storeAuthInfo(
      AuthCredentialEntity authCredential);
  Future<Either<Failure, AuthCredentialEntity>> fetchAuthInfo();
  Future<Unit> removeAuthInfo();
}

@LazySingleton(as: IAuthenticationLocalDataSource)
class AuthenticationLocalDataSource implements IAuthenticationLocalDataSource {
  final FlutterSecureStorage secureStorage;

  AuthenticationLocalDataSource(this.secureStorage);
  @override
  Future<Either<Failure, AuthCredentialEntity>> fetchAuthInfo() async {
    try {
      final jsonData = await secureStorage.read(key: SecurePoint.secureKey);
      if (jsonData != null) {
        final parseData = AuthCredentialEntity.fromJson(
            jsonDecode(jsonData) as Map<String, dynamic>);

        return right(parseData);
      } else {
        return left(const Failure.cache());
      }
    } on PlatformException catch (e) {
      return left(
        Failure.cache(message: e.message ?? 'Data not found'),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> storeAuthInfo(
      AuthCredentialEntity authCredential) async {
    try {
      await secureStorage.write(
        key: SecurePoint.secureKey,
        value: jsonEncode(authCredential.toJson()),
      );
      return right(unit);
    } on PlatformException catch (e) {
      return left(Failure.cache(message: e.message ?? 'Cannot Store Data'));
    }
  }

  @override
  Future<Unit> removeAuthInfo() async {
    try {
      await secureStorage.delete(key: SecurePoint.secureKey);
      return unit;
    } on PlatformException {
      return unit;
    }
  }
}
