import 'package:beverage_app/features/product/domain/entities/category_items_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../entities/product_categories_entity.dart';

abstract class IProductRepository {
  Future<Either<Failure, List<ProductCategoriesEntity>>> fetchProductCategories(
      {required String authToken, required String url});
  Future<Either<Failure, String>> fetchAddress({required String authToken});
  Future<Either<Failure, String>> placeOrder({
    required List<Map<String, dynamic>> data,
    required String authToken,
  });

  Future<Either<Failure, List<Map<String, dynamic>>>> fetchProductCart(
      {required String authToken});

  Future<Either<Failure, List<CategoryItemsEntity>>> fetchFeaturedProducts(
      {required String authToken, required String url});

  Future<Either<Failure, Unit>> storeCartProduct(
      {required List<Map<String, dynamic>> cartData,
      required String authToken});

  Future<Either<Failure, Unit>> removeCart({required String authToken});

  Future<Either<Failure, Map<String, dynamic>>> fetchCalculation({
    required List<Map<String, dynamic>> data,
    required String authToken,
  });

  Future<Either<Failure, String>> payment({
    required Map<String, dynamic> data,
    required String authToken,
    required List<Map<String, dynamic>> orderPlaceData,
  });

  Future<Either<Failure, String>> paymentOutstanding({
    required Map<String, dynamic> data,
    required String authToken,
  });
}
