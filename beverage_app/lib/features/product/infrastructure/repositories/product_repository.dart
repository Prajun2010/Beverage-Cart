import 'package:beverage_app/features/product/domain/entities/category_items_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../domain/entities/product_categories_entity.dart';
import '../../domain/repositories/i_product_repository.dart';
import '../datasources/i_product_local_datasource.dart';
import '../datasources/i_product_remote_datasource.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final IProductRemoteDataSource _productRemoteDataSource;
  final IProductLocalDataSource _productLocalDataSource;

  ProductRepository(
    this._productRemoteDataSource,
    this._productLocalDataSource,
  );

  @override
  Future<Either<Failure, List<ProductCategoriesEntity>>> fetchProductCategories(
      {required String authToken, required String url}) async {
    final response = await _productRemoteDataSource.fetchProductCategories(
        authToken: authToken, url: url);

    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, String>> fetchAddress(
      {required String authToken}) async {
    final response =
        await _productRemoteDataSource.fetchAddress(authToken: authToken);

    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, String>> placeOrder({
    required List<Map<String, dynamic>> data,
    required String authToken,
  }) async {
    final response = await _productRemoteDataSource.placeOrder(
      data: data,
      authToken: authToken,
    );

    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> fetchCalculation(
      {required List<Map<String, dynamic>> data,
      required String authToken}) async {
    final response = await _productRemoteDataSource.fetchCalculation(
        data: data, authToken: authToken);
    return response.fold((l) => left(l), (r) => right(r));
  }

  // fetching stored cached product data.
  @override
  Future<Either<Failure, List<Map<String, dynamic>>>> fetchProductCart(
      {required String authToken}) async {
    final response =
        await _productLocalDataSource.fetchCartProducts(authToken: authToken);

    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, Unit>> removeCart({required String authToken}) async {
    final response =
        await _productLocalDataSource.removeCart(authToken: authToken);

    return response.fold((l) => left(l), (r) => right(r));
  }

  // storing cart in cache.
  @override
  Future<Either<Failure, Unit>> storeCartProduct({
    required List<Map<String, dynamic>> cartData,
    required String authToken,
  }) async {
    final response = await _productLocalDataSource.storeCartProducts(
      cartData: cartData,
      authToken: authToken,
    );
    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, List<CategoryItemsEntity>>> fetchFeaturedProducts(
      {required String authToken, required String url}) async {
    final response = await _productRemoteDataSource.fetchFeaturedProducts(
      authToken: authToken,
      url: url,
    );
    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, String>> payment({
    required Map<String, dynamic> data,
    required String authToken,
    required List<Map<String, dynamic>> orderPlaceData,
  }) async {
    final response = await _productRemoteDataSource.payment(
      data: data,
      authToken: authToken,
      orderPlaceData: orderPlaceData,
    );
    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, String>> paymentOutstanding(
      {required Map<String, dynamic> data, required String authToken}) async {
    final response = await _productRemoteDataSource.paymentOutstanding(
      data: data,
      authToken: authToken,
    );
    return response.fold((l) => left(l), (r) => right(r));
  }
}
