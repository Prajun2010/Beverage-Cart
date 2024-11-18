import 'package:beverage_app/features/product/domain/entities/category_items_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/endpoints.dart';
import '../../../../core/infrastructure/error/failure.dart';
import '../../../../core/infrastructure/network/i_http_client.dart';
import '../../domain/entities/product_cart_entity.dart';
import '../../domain/entities/product_categories_entity.dart';

abstract class IProductRemoteDataSource {
  Future<Either<Failure, List<ProductCategoriesEntity>>>
      fetchProductCategories({
    required String authToken,
    required String url,
  });
  Future<Either<Failure, String>> fetchAddress({
    required String authToken,
  });
  Future<Either<Failure, String>> placeOrder({
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

  Future<Either<Failure, ProductCartEntity>> fetchProductCart({
    required String authToken,
  });
  Future<Either<Failure, Map<String, dynamic>>> fetchCalculation({
    required List<Map<String, dynamic>> data,
    required String authToken,
  });

  Future<Either<Failure, List<CategoryItemsEntity>>> fetchFeaturedProducts({
    required String authToken,
    required String url,
  });
}

@LazySingleton(as: IProductRemoteDataSource)
class ProductRemoteDataSource implements IProductRemoteDataSource {
  final IHttpClient _client;

  ProductRemoteDataSource(this._client);
  @override
  Future<Either<Failure, List<ProductCategoriesEntity>>> fetchProductCategories(
      {required String authToken, required String url}) async {
    final response = await _client.get(url, authToken: authToken);

    return response.fold((l) => left(l), (r) {
      final jsonData = r.data as List;

      return right(jsonData
          .map((e) =>
              ProductCategoriesEntity.fromJson(e as Map<String, dynamic>))
          .toList());
    });
  }

  @override
  Future<Either<Failure, String>> fetchAddress(
      {required String authToken}) async {
    final response =
        await _client.get(AppEndPoints.address, authToken: authToken);

    return response.fold(
      (l) => left(l),
      (r) => right(r.data['address'] as String),
    );
  }

  @override
  Future<Either<Failure, String>> placeOrder(
      {required List<Map<String, dynamic>> data,
      required String authToken}) async {
    // debugPrint('Place order was evoked!');
    final response = await _client.post(
      AppEndPoints.placeOrder,
      data: data,
      authToken: authToken,
    );

    return response.fold(
      (l) => left(l),
      (r) => right(r.data['url'] as String),
    );
  }

  @override
  Future<Either<Failure, ProductCartEntity>> fetchProductCart(
      {required String authToken}) async {
    final response =
        await _client.get(AppEndPoints.productCart, authToken: authToken);

    return response.fold((l) => left(l), (r) {
      final jsonData = r.data as List;

      return right(
          ProductCartEntity.fromJson(jsonData[0] as Map<String, dynamic>));
    });
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> fetchCalculation({
    required List<Map<String, dynamic>> data,
    required String authToken,
  }) async {
    final response = await _client.post(
      AppEndPoints.calculate,
      authToken: authToken,
      data: data,
    );

    return response.fold(
        (l) => left(l), (r) => right(r.data as Map<String, dynamic>));
  }

  @override
  Future<Either<Failure, List<CategoryItemsEntity>>> fetchFeaturedProducts({
    required String authToken,
    required String url,
  }) async {
    final response = await _client.get(
      url,
      authToken: authToken,
    );

    return response.fold((l) => left(l), (r) {
      final jsonData = r.data as List;

      return right(
        jsonData
            .map((e) => CategoryItemsEntity.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
    });
  }

  @override
  Future<Either<Failure, String>> payment({
    required Map<String, dynamic> data,
    required String authToken,
    required List<Map<String, dynamic>> orderPlaceData,
  }) async {
    final response = await _client.post(
      AppEndPoints.paymentRecord,
      data: data,
      authToken: authToken,
      formData: true,
    );

    return response.fold((l) {
      return left(l);
    }, (r) async {
      // debugPrint('$orderPlaceData');
      final finalResponse =
          await placeOrder(data: orderPlaceData, authToken: authToken);

      return right(finalResponse.getOrElse(() => ''));
    });
  }

  @override
  Future<Either<Failure, String>> paymentOutstanding({
    required Map<String, dynamic> data,
    required String authToken,
  }) async {
    final response = await _client.post(
      AppEndPoints.paymentRecord,
      data: data,
      authToken: authToken,
      formData: true,
    );

    return response.fold(
      (l) => left(l),
      (r) => right(r.data['detail']),
    );
  }
}
