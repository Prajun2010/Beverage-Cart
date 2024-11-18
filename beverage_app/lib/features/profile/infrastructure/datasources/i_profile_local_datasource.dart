import 'dart:convert';

import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:beverage_app/core/infrastructure/securepoints.dart';
import 'package:beverage_app/features/profile/domain/entities/profile_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class IProfileLocalDataSource {
  Future<Either<Failure, ProfileEntity>> fetchCachedProfile(
      {required String authToken});

  Future<Either<Failure, Unit>> storeProfile({
    required String authToken,
    required ProfileEntity profileEntity,
  });
}

@LazySingleton(as: IProfileLocalDataSource)
class ProfileLocalDataSource implements IProfileLocalDataSource {
  final FlutterSecureStorage _secureStorage;
  ProfileLocalDataSource(this._secureStorage);
  @override
  Future<Either<Failure, ProfileEntity>> fetchCachedProfile(
      {required String authToken}) async {
    try {
      final data =
          await _secureStorage.read(key: SecurePoint.secureProfile + authToken);

      if (data != null) {
        final parseData = json.decode(data);

        return right(ProfileEntity.fromJson(parseData as Map<String, dynamic>));
      }
      return left(
        const Failure.cache(message: 'No Profile records found'),
      );
    } on PlatformException catch (e) {
      return left(
        Failure.cache(message: e.message ?? 'No Profile records found'),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> storeProfile({
    required String authToken,
    required ProfileEntity profileEntity,
  }) async {
    try {
      await _secureStorage.write(
        key: SecurePoint.secureProfile + authToken,
        value: json.encode(profileEntity.toJson()),
      );
      return right(unit);
    } on PlatformException catch (e) {
      return left(
        Failure.cache(message: e.message ?? 'Profile couldn\'t be stored!'),
      );
    }
  }
}
