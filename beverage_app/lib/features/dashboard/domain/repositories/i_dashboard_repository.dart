import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:beverage_app/features/dashboard/domain/entities/banner_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IDashboardRepository {
  Future<Either<Failure, BannerEntity>> fetchBanner(
      {required String authToken, required String url});
}
