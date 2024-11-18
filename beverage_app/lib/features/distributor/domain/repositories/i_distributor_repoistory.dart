import 'package:dartz/dartz.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../entities/distributor_entity.dart';

abstract class IDistributorRepository {
  Future<Either<Failure, List<DistributorEntity>>> fetchDistributor(
      {required String authToken});
  // Future<Either<Failure, Unit>> storeProductUrl({required String url});
  // Future<Either<Failure, String>> getProductUrl();
  // Future<Unit> removeUrl();
}
