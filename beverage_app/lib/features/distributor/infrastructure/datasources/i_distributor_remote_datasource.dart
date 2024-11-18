import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/endpoints.dart';
import '../../../../core/infrastructure/error/failure.dart';
import '../../../../core/infrastructure/network/i_http_client.dart';
import '../../domain/entities/distributor_entity.dart';

abstract class IDistributorRemoteDataSoruce {
  Future<Either<Failure, List<DistributorEntity>>> fetchDistributor(
      {required String authToken});
}

@LazySingleton(as: IDistributorRemoteDataSoruce)
class DistributorRemoteDataSource implements IDistributorRemoteDataSoruce {
  final IHttpClient _client;

  DistributorRemoteDataSource(this._client);
  @override
  Future<Either<Failure, List<DistributorEntity>>> fetchDistributor(
      {required String authToken}) async {
    final response = await _client.get(
      AppEndPoints.distributor,
      authToken: authToken,
    );

    return response.fold((l) => left(l), (r) {
      final jsonData = r.data as List;

      return right(jsonData
          .map((e) => DistributorEntity.fromJson(e as Map<String, dynamic>))
          .toList());
    });
  }
}
