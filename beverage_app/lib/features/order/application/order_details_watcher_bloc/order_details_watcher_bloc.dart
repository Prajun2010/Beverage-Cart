import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../../authentication/domain/repositories/i_authentication_repository.dart';
import '../../domain/entities/order_details_entity.dart';
import '../../domain/repositories/i_order_repository.dart';

part 'order_details_watcher_bloc.freezed.dart';
part 'order_details_watcher_event.dart';
part 'order_details_watcher_state.dart';

@injectable
class OrderDetailsWatcherBloc
    extends Bloc<OrderDetailsWatcherEvent, OrderDetailsWatcherState> {
  final IAuthenticationRepository _authenticationRepository;
  final IOrderRepository _orderRepository;
  OrderDetailsWatcherBloc(
    this._authenticationRepository,
    this._orderRepository,
  ) : super(OrderDetailsWatcherState.initial()) {
    on<OrderDetailsWatcherEvent>((event, emit) async {
      await event.map(fetchOrderDetails: (e) async {
        final authToken = await _authenticationRepository.getToken();
        Either<Failure, OrderDetailsEntity>? failureOrSuccess;
        emit(state.copyWith(isProcessing: true, failureOrSuccess: null));

        failureOrSuccess = await _orderRepository.fetchOrderHistoryDetails(
            authToken: authToken, url: e.url);

        emit(state.copyWith(
            isProcessing: false, failureOrSuccess: failureOrSuccess));
      });
    });
  }
}
