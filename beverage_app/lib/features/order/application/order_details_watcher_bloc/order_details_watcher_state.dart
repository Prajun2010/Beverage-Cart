part of 'order_details_watcher_bloc.dart';

@freezed
class OrderDetailsWatcherState with _$OrderDetailsWatcherState {
  const factory OrderDetailsWatcherState({
    required bool isProcessing,
    Either<Failure, OrderDetailsEntity>? failureOrSuccess,
  }) = _OrderDetailsWatcherState;
  factory OrderDetailsWatcherState.initial() =>
      const OrderDetailsWatcherState(isProcessing: false);
}
