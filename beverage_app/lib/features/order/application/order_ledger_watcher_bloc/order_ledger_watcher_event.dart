part of 'order_ledger_watcher_bloc.dart';

@freezed
class OrderLedgerWatcherEvent with _$OrderLedgerWatcherEvent {
  const factory OrderLedgerWatcherEvent.fetchOrderLedgers() =
      _FetchOrderLedgers;
}
