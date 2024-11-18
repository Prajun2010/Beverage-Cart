import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:beverage_app/features/product/domain/entities/category_items_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ICoreRepository {
  Future<Either<Failure, List<CategoryItemsEntity>>> searchProducts({
    required String authToken,
    required String url,
    required String searchKey,
  });
}
