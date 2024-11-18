part of 'order_history_watcher_bloc.dart';

@freezed
class OrderHistoryWatcherEvent with _$OrderHistoryWatcherEvent {
  const factory OrderHistoryWatcherEvent.fetchOrderHistory() =
      _FetchOrderHistory;
}
