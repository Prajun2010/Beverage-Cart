import 'package:beverage_app/features/dashboard/domain/entities/banner_entity.dart';
import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:beverage_app/features/dashboard/domain/repositories/i_dashboard_repository.dart';
import 'package:beverage_app/features/dashboard/infrastructure/datasources/i_dashboard_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDashboardRepository)
class DashboardRepository implements IDashboardRepository {
  final IDashboardRemoteDataSource _dashboardRemoteDataSource;
  DashboardRepository(this._dashboardRemoteDataSource);
  @override
  Future<Either<Failure, BannerEntity>> fetchBanner(
      {required String authToken, required String url}) async {
    final response = await _dashboardRemoteDataSource.fetchBanner(
        authToken: authToken, url: url);
    return response.fold((l) => left(l), (r) => right(r));
  }
}
