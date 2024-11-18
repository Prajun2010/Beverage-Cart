import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/endpoints.dart';
import '../../../../core/infrastructure/error/failure.dart';
import '../../../../core/infrastructure/network/i_http_client.dart';
import '../../domain/entities/order_details_entity.dart';
import '../../domain/entities/order_history_entity.dart';
import '../../domain/entities/order_ledger_entity.dart';

abstract class IOrderRemoteDataSource {
  Future<Either<Failure, List<OrderHistoryEntity>>> fetchOrderHistory(
      {required String authToken});
  Future<Either<Failure, OrderDetailsEntity>> fetchOrderHistoryDetails({
    required String authToken,
    required String url,
  });
  Future<Either<Failure, List<OrderLedgerEntity>>> fetchOrderLedgers({
    required String authToken,
    required String url,
  });
  Future<Either<Failure, Unit>> reorder({
    required String authToken,
    required String url,
  });
}

@LazySingleton(as: IOrderRemoteDataSource)
class OrderRemoteDataSource implements IOrderRemoteDataSource {
  final IHttpClient _client;

  OrderRemoteDataSource(this._client);
  @override
  Future<Either<Failure, List<OrderHistoryEntity>>> fetchOrderHistory(
      {required String authToken}) async {
    final response =
        await _client.get(AppEndPoints.orderHistory, authToken: authToken);

    return response.fold(
      (l) => left(l),
      (r) {
        final jsonData = r.data as List;

        return right(
          jsonData
              .map(
                  (e) => OrderHistoryEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
        );
      },
    );
  }

  @override
  Future<Either<Failure, OrderDetailsEntity>> fetchOrderHistoryDetails(
      {required String authToken, required String url}) async {
    final response = await _client.get(url, authToken: authToken);

    return response.fold(
      (l) => left(l),
      (r) {
        final jsonData = r.data as List;

        return right(
            OrderDetailsEntity.fromJson(jsonData[0] as Map<String, dynamic>));
      },
    );
  }

  @override
  Future<Either<Failure, Unit>> reorder(
      {required String authToken, required String url}) async {
    final response = await _client.post(
      url,
      data: {'test': 'test'},
      authToken: authToken,
    );

    return response.fold((l) => left(l), (r) => right(unit));
  }

  @override
  Future<Either<Failure, List<OrderLedgerEntity>>> fetchOrderLedgers(
      {required String authToken, required String url}) async {
    final response = await _client.get(url, authToken: authToken);

    return response.fold(
      (l) => left(l),
      (r) {
        final jsonData = r.data as List;
        return right(jsonData
            .map((e) => OrderLedgerEntity.fromJson(e as Map<String, dynamic>))
            .toList());
      },
    );
  }
}
