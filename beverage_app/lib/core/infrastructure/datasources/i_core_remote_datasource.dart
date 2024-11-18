import 'dart:convert';

import '../error/failure.dart';
import '../network/i_http_client.dart';
import '../../../features/product/domain/entities/category_items_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class ICoreRemoteDataSource {
  Future<Either<Failure, List<CategoryItemsEntity>>> searchProducts({
    required String authToken,
    required String url,
    required String searchKey,
  });
}

@LazySingleton(as: ICoreRemoteDataSource)
class CoreRemoteDataSource implements ICoreRemoteDataSource {
  final IHttpClient _client;
  CoreRemoteDataSource(this._client);
  @override
  Future<Either<Failure, List<CategoryItemsEntity>>> searchProducts({
    required String authToken,
    required String url,
    required String searchKey,
  }) async {
    final queryParams = {
      "key": searchKey,
    };
    final response = await _client.get(
      url,
      authToken: authToken,
      queryParameters: queryParams,
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
}
