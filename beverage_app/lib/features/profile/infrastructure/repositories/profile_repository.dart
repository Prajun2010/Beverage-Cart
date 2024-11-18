import 'package:beverage_app/features/profile/domain/entities/link_detail_entity.dart';
import 'package:beverage_app/features/profile/infrastructure/datasources/i_profile_local_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/repositories/i_profile_repository.dart';
import '../datasources/i_profile_remote_datasource.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final IProfileRemoteDataSource _profileRemoteDataSource;
  final IProfileLocalDataSource _profileLocalDataSource;
  ProfileRepository(
    this._profileRemoteDataSource,
    this._profileLocalDataSource,
  );
  @override
  Future<Either<Failure, ProfileEntity>> fetchProfile(
      {required String authToken, required String url}) async {
    final response = await _profileRemoteDataSource.fetchProfile(
      authToken: authToken,
      url: url,
    );

    return response.fold(
      (l) => left(l),
      (r) async {
        await _profileLocalDataSource.storeProfile(
            authToken: authToken, profileEntity: r);
        return right(r);
      },
    );
  }

  @override
  Future<Either<Failure, List<LinkDetailEntity>>> fetchLinks(
      {required String authToken, required String url}) async {
    final response = await _profileRemoteDataSource.fetchLinks(
        authToken: authToken, url: url);
    return response.fold((l) => left(l), (r) => right(r));
  }
}
