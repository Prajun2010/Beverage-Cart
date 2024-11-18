import '../../../product/infrastructure/datasources/i_product_local_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../domain/repositories/i_authentication_repository.dart';
import '../datasources/i_authentication_local_datasource.dart';
import '../datasources/i_authentication_remote_datasource.dart';

@LazySingleton(as: IAuthenticationRepository)
class AuthenticationRepository implements IAuthenticationRepository {
  final IAuthenticationRemoteDataSource _remoteDataSource;
  final IAuthenticationLocalDataSource _localDataSource;
  final IProductLocalDataSource _productLocalDataSource;

  AuthenticationRepository(
    this._remoteDataSource,
    this._localDataSource,
    this._productLocalDataSource,
  );

  @override
  Future<Either<Failure, Unit>> authCheckRequested() async {
    final response = await _localDataSource.fetchAuthInfo();
    return response.fold((l) => left(l), (r) => right(unit));
  }

  @override
  Future<Either<Failure, String>> verifyMobile({
    required String mobileNumber,
    required String url,
  }) async {
    final response = await _remoteDataSource.verifyMobile(
      mobileNumber: mobileNumber,
      url: url,
    );

    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, Unit>> verifyOtp({
    required Map<String, dynamic> data,
  }) async {
    final response = await _remoteDataSource.verifyOtp(
      data: data,
    );

    return response.fold(
      (l) => left(l),
      (r) async {
        await _localDataSource.storeAuthInfo(r);
        return right(unit);
      },
    );
  }

  @override
  Future<String> getToken() async {
    final response = await _localDataSource.fetchAuthInfo();
    return response.fold((l) => throw Exception(), (r) => r.token);
  }

  @override
  Future<Unit> logout() async {
    return await _localDataSource.removeAuthInfo();
  }

  @override
  Future<Either<Failure, Unit>> signUp(
      {required Map<String, dynamic> data}) async {
    final response = await _remoteDataSource.signUp(data: data);

    return response.fold((l) => left(l), (r) => right(r));
  }

  /* OTP verification for registration. */
  @override
  Future<Either<Failure, Unit>> verifyRegistrationOtp({
    required Map<String, dynamic> data,
  }) async {
    final response = await _remoteDataSource.verifyRegistrationOtp(
      data: data,
    );

    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, Unit>> removeAccount(
      {required String authToken}) async {
    final response =
        await _remoteDataSource.removeAccount(authToken: authToken);
    return response.fold((l) => left(l), (r) async {
      await _localDataSource.removeAuthInfo();
      await _productLocalDataSource.removeCart(authToken: authToken);
      return right(r);
    });
  }
}
