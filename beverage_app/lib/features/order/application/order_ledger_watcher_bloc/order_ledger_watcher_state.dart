part of 'order_ledger_watcher_bloc.dart';

@freezed
class OrderLedgerWatcherState with _$OrderLedgerWatcherState {
  const factory OrderLedgerWatcherState({
    required bool isLoading,
    Either<Failure, List<OrderLedgerEntity>>? failureOrSuccess,
  }) = _OrderLedgerWatcherState;
  factory OrderLedgerWatcherState.initial() => const OrderLedgerWatcherState(
        isLoading: false,
      );
}
