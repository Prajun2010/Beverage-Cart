import 'package:beverage_app/core/infrastructure/endpoints.dart';
import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:beverage_app/features/authentication/domain/repositories/i_authentication_repository.dart';
import 'package:beverage_app/features/order/domain/entities/order_ledger_entity.dart';
import 'package:beverage_app/features/order/domain/repositories/i_order_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_ledger_watcher_event.dart';
part 'order_ledger_watcher_state.dart';
part 'order_ledger_watcher_bloc.freezed.dart';

@injectable
class OrderLedgerWatcherBloc
    extends Bloc<OrderLedgerWatcherEvent, OrderLedgerWatcherState> {
  final IOrderRepository _orderRepository;
  final IAuthenticationRepository _authenticationRepository;
  OrderLedgerWatcherBloc(
    this._orderRepository,
    this._authenticationRepository,
  ) : super(OrderLedgerWatcherState.initial()) {
    on<OrderLedgerWatcherEvent>((event, emit) async {
      await event.map(
        fetchOrderLedgers: (_) async {
          emit(state.copyWith(isLoading: true, failureOrSuccess: null));

          final authToken = await _authenticationRepository.getToken();

          Either<Failure, List<OrderLedgerEntity>>? failureOrSuccess;

          failureOrSuccess = await _orderRepository.fetchOrderLedgers(
              authToken: authToken, url: AppEndPoints.leadger);

          emit(
            state.copyWith(
                failureOrSuccess: failureOrSuccess, isLoading: false),
          );
        },
      );
    });
  }
}
