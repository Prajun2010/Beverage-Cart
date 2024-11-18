import 'package:dartz/dartz.dart';

import '../../../../core/infrastructure/error/failure.dart';

abstract class IAuthenticationRepository {
  Future<Either<Failure, Unit>> authCheckRequested();
  Future<String> getToken();
  Future<Either<Failure, String>> verifyMobile({
    required String mobileNumber,
    required String url,
  });
  Future<Either<Failure, Unit>> verifyOtp({
    required Map<String, dynamic> data,
  });
  Future<Either<Failure, Unit>> verifyRegistrationOtp({
    required Map<String, dynamic> data,
  });
  Future<Either<Failure, Unit>> signUp({required Map<String, dynamic> data});
  Future<Either<Failure, Unit>> removeAccount({required String authToken});
  Future<Unit> logout();
}
