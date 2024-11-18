import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:beverage_app/features/profile/domain/entities/link_detail_entity.dart';
import 'package:beverage_app/features/profile/domain/entities/profile_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IProfileRepository {
  Future<Either<Failure, ProfileEntity>> fetchProfile({
    required String authToken,
    required String url,
  });
  Future<Either<Failure, List<LinkDetailEntity>>> fetchLinks({
    required String authToken,
    required String url,
  });
}
