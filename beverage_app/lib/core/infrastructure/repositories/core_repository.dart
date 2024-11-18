import 'package:beverage_app/core/domain/repositories/i_core_repository.dart';
import 'package:beverage_app/core/infrastructure/datasources/i_core_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:beverage_app/features/product/domain/entities/category_items_entity.dart';
import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICoreRepository)
class CoreRepository implements ICoreRepository {
  final ICoreRemoteDataSource _coreRemoteDataSource;
  CoreRepository(this._coreRemoteDataSource);
  @override
  Future<Either<Failure, List<CategoryItemsEntity>>> searchProducts({
    required String authToken,
    required String url,
    required String searchKey,
  }) async {
    final response = await _coreRemoteDataSource.searchProducts(
      authToken: authToken,
      url: url,
      searchKey: searchKey,
    );

    return response.fold((l) => left(l), (r) => right(r));
  }
}
