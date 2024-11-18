import 'package:beverage_app/features/order/domain/entities/order_ledger_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../domain/entities/order_details_entity.dart';
import '../../domain/entities/order_history_entity.dart';
import '../../domain/repositories/i_order_repository.dart';
import '../datasoruces/i_order_remote_datasource.dart';

@LazySingleton(as: IOrderRepository)
class OrderRepository implements IOrderRepository {
  final IOrderRemoteDataSource _remoteDataSource;

  OrderRepository(this._remoteDataSource);
  @override
  Future<Either<Failure, List<OrderHistoryEntity>>> fetchOrderHistory(
      {required String authToken}) async {
    final response =
        await _remoteDataSource.fetchOrderHistory(authToken: authToken);

    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, OrderDetailsEntity>> fetchOrderHistoryDetails(
      {required String authToken, required String url}) async {
    final response = await _remoteDataSource.fetchOrderHistoryDetails(
        authToken: authToken, url: url);

    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, Unit>> reorder(
      {required String authToken, required String url}) async {
    final response =
        await _remoteDataSource.reorder(authToken: authToken, url: url);

    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, List<OrderLedgerEntity>>> fetchOrderLedgers(
      {required String authToken, required String url}) async {
    final response = await _remoteDataSource.fetchOrderLedgers(
        authToken: authToken, url: url);
    return response.fold((l) => left(l), (r) => right(r));
  }
}
