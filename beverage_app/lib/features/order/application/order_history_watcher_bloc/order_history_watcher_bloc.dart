import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../../authentication/domain/repositories/i_authentication_repository.dart';
import '../../domain/entities/order_history_entity.dart';
import '../../domain/repositories/i_order_repository.dart';

part 'order_history_watcher_bloc.freezed.dart';
part 'order_history_watcher_event.dart';
part 'order_history_watcher_state.dart';

@injectable
class OrderHistoryWatcherBloc
    extends Bloc<OrderHistoryWatcherEvent, OrderHistoryWatcherState> {
  final IOrderRepository _orderRepository;
  final IAuthenticationRepository _authenticationRepository;
  OrderHistoryWatcherBloc(
    this._orderRepository,
    this._authenticationRepository,
  ) : super(OrderHistoryWatcherState.initial()) {
    on<OrderHistoryWatcherEvent>(
      (event, emit) async {
        await event.map(
          fetchOrderHistory: (_) async {
            final authToken = await _authenticationRepository.getToken();
            emit(state.copyWith(isProcessing: true, failureOrSuccess: null));
            final failureOrSuccess =
                await _orderRepository.fetchOrderHistory(authToken: authToken);
            emit(state.copyWith(
                isProcessing: false, failureOrSuccess: failureOrSuccess));
          },
        );
      },
    );
  }
}
