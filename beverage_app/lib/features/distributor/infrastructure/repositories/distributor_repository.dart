import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../domain/entities/distributor_entity.dart';
import '../../domain/repositories/i_distributor_repoistory.dart';
import '../datasources/i_distributor_remote_datasource.dart';

@LazySingleton(as: IDistributorRepository)
class DistributorRepository implements IDistributorRepository {
  final IDistributorRemoteDataSoruce _distributorRemoteDataSoruce;
  // final IDistributorLocalDataSource _distributorLocalDataSource;

  DistributorRepository(
    this._distributorRemoteDataSoruce,
    // this._distributorLocalDataSource,
  );
  @override
  Future<Either<Failure, List<DistributorEntity>>> fetchDistributor(
      {required String authToken}) async {
    final response = await _distributorRemoteDataSoruce.fetchDistributor(
        authToken: authToken);

    return response.fold((l) => left(l), (r) => right(r));
  }

  // @override
  // Future<Either<Failure, String>> getProductUrl() async {
  //   final response = await _distributorLocalDataSource.fetchProductUrl();

  //   return response.fold((l) => left(l), (r) => right(r));
  // }

  // @override
  // Future<Unit> removeUrl() async {
  //   return await _distributorLocalDataSource.removeUrl();
  // }

  // @override
  // Future<Either<Failure, Unit>> storeProductUrl({required String url}) async {
  //   final response =
  //       await _distributorLocalDataSource.storeProductUrl(url: url);

  //   return response.fold((l) => left(l), (r) => right(r));
  // }
}
