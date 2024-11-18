part of 'distributor_watcher_bloc.dart';

@freezed
class DistributorWatcherState with _$DistributorWatcherState {
  const factory DistributorWatcherState({
    required bool isProcessing,
    Either<Failure, List<DistributorEntity>>? failureOrSuccess,
  }) = _DistributorWatcherState;
  factory DistributorWatcherState.initial() => const DistributorWatcherState(
        isProcessing: false,
      );
}
