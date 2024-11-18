part of 'distributor_watcher_bloc.dart';

@freezed
class DistributorWatcherEvent with _$DistributorWatcherEvent {
  const factory DistributorWatcherEvent.fetchDistributor() = _FetchDistributor;
}
