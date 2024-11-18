import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/endpoints.dart';
import '../../../../core/infrastructure/error/failure.dart';
import '../../../../core/infrastructure/network/i_http_client.dart';
import '../../domain/entities/auth_credential_entity.dart';

abstract class IAuthenticationRemoteDataSource {
  Future<Either<Failure, String>> verifyMobile({
    required String mobileNumber,
    required String url,
  });
  Future<Either<Failure, AuthCredentialEntity>> verifyOtp({
    required Map<String, dynamic> data,
  });

  Future<Either<Failure, Unit>> verifyRegistrationOtp({
    required Map<String, dynamic> data,
  });
  Future<Either<Failure, Unit>> signUp({required Map<String, dynamic> data});
  Future<Either<Failure, Unit>> removeAccount({required String authToken});
}

@LazySingleton(as: IAuthenticationRemoteDataSource)
class AuthenticationRemoteDataSource
    implements IAuthenticationRemoteDataSource {
  final IHttpClient _client;

  AuthenticationRemoteDataSource(
    this._client,
  );
  @override
  Future<Either<Failure, String>> verifyMobile({
    required String mobileNumber,
    required String url,
  }) async {
    final data = {'mobile': mobileNumber};
    final response = await _client.post(url, data: data);

    return response.fold((l) => left(l), (r) => right(data['mobile']!));
  }

  @override
  Future<Either<Failure, AuthCredentialEntity>> verifyOtp({
    required Map<String, dynamic> data,
  }) async {
    debugPrint('This otp verification called!');
    final response = await _client.post(AppEndPoints.otpVerify, data: data);

    return response.fold(
      (l) => left(l),
      (r) {
        return right(
          AuthCredentialEntity.fromJson(r.data as Map<String, dynamic>),
        );
      },
    );
  }

  @override
  Future<Either<Failure, Unit>> signUp(
      {required Map<String, dynamic> data}) async {
    final response = await _client.post(AppEndPoints.signup, data: data);

    return response.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> verifyRegistrationOtp({
    required Map<String, dynamic> data,
  }) async {
    final response =
        await _client.post(AppEndPoints.otpVerifyRegistration, data: data);

    return response.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> removeAccount(
      {required String authToken}) async {
    final response = await _client
        .post(AppEndPoints.removeAccount, authToken: authToken, data: {});

    return response.fold((l) => left(l), (r) => right(unit));
  }
}
