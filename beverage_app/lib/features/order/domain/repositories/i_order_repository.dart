import 'package:beverage_app/features/order/domain/entities/order_details_entity.dart';
import 'package:beverage_app/features/order/domain/entities/order_ledger_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../entities/order_history_entity.dart';

abstract class IOrderRepository {
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
