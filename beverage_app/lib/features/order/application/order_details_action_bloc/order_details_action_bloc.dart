import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../../authentication/domain/repositories/i_authentication_repository.dart';
import '../../domain/repositories/i_order_repository.dart';

part 'order_details_action_bloc.freezed.dart';
part 'order_details_action_event.dart';
part 'order_details_action_state.dart';

@injectable
class OrderDetailsActionBloc
    extends Bloc<OrderDetailsActionEvent, OrderDetailsActionState> {
  final IAuthenticationRepository _authenticationRepository;
  final IOrderRepository _orderRepository;
  OrderDetailsActionBloc(
    this._authenticationRepository,
    this._orderRepository,
  ) : super(OrderDetailsActionState.initial()) {
    on<OrderDetailsActionEvent>((event, emit) async {
      await event.map(
        reorder: (e) async {
          final authToken = await _authenticationRepository.getToken();
          Either<Failure, Unit>? failureOrSuccess;
          emit(state.copyWith(isProcessing: true, failureOrSuccess: null));

          failureOrSuccess =
              await _orderRepository.reorder(authToken: authToken, url: e.url);

          emit(state.copyWith(
              failureOrSuccess: failureOrSuccess, isProcessing: false));
        },
      );
    });
  }
}
