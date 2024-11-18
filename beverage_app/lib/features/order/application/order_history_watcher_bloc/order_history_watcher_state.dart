part of 'order_history_watcher_bloc.dart';

@freezed
class OrderHistoryWatcherState with _$OrderHistoryWatcherState {
  const factory OrderHistoryWatcherState({
    required bool isProcessing,
    Either<Failure, List<OrderHistoryEntity>>? failureOrSuccess,
  }) = _OrderHistoryWatcherState;
  factory OrderHistoryWatcherState.initial() =>
      const OrderHistoryWatcherState(isProcessing: false);
}
