import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../../../core/infrastructure/network/i_http_client.dart';
import '../../domain/entities/link_detail_entity.dart';
import '../../domain/entities/profile_entity.dart';

abstract class IProfileRemoteDataSource {
  Future<Either<Failure, ProfileEntity>> fetchProfile({
    required String authToken,
    required String url,
  });
  Future<Either<Failure, List<LinkDetailEntity>>> fetchLinks({
    required String authToken,
    required String url,
  });
}

@LazySingleton(as: IProfileRemoteDataSource)
class ProfileRemoteDataSource implements IProfileRemoteDataSource {
  final IHttpClient _client;
  ProfileRemoteDataSource(this._client);
  @override
  Future<Either<Failure, ProfileEntity>> fetchProfile({
    required String authToken,
    required String url,
  }) async {
    final response = await _client.get(url, authToken: authToken);

    return response.fold(
      (l) => left(l),
      (r) {
        return right(
          ProfileEntity.fromJson(r.data as Map<String, dynamic>),
        );
      },
    );
  }

  @override
  Future<Either<Failure, List<LinkDetailEntity>>> fetchLinks(
      {required String authToken, required String url}) async {
    final response = await _client.get(url, authToken: authToken);

    return response.fold(
      (l) => left(l),
      (r) {
        final jsonData = r.data as List;

        return right(jsonData
            .map((e) => LinkDetailEntity.fromJson(e as Map<String, dynamic>))
            .toList());
      },
    );
  }
}
