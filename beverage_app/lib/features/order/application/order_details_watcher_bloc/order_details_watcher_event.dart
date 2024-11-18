part of 'order_details_watcher_bloc.dart';

@freezed
class OrderDetailsWatcherEvent with _$OrderDetailsWatcherEvent {
  const factory OrderDetailsWatcherEvent.fetchOrderDetails(
      {required String url}) = _FetchOrderDetails;
}
