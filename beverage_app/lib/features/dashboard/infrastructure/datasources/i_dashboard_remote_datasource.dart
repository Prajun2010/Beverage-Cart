import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:beverage_app/core/infrastructure/network/i_http_client.dart';
import 'package:beverage_app/features/dashboard/domain/entities/banner_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class IDashboardRemoteDataSource {
  Future<Either<Failure, BannerEntity>> fetchBanner(
      {required String authToken, required String url});
}

@LazySingleton(as: IDashboardRemoteDataSource)
class DashboardRemoteDataSource implements IDashboardRemoteDataSource {
  final IHttpClient _client;
  DashboardRemoteDataSource(this._client);

  @override
  Future<Either<Failure, BannerEntity>> fetchBanner(
      {required String authToken, required String url}) async {
    final response = await _client.get(url, authToken: authToken);

    return response.fold((l) => left(l), (r) {
      return right(BannerEntity.fromJson(r.data as Map<String, dynamic>));
    });
  }
}
