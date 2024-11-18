part of 'banner_watcher_bloc.dart';

@freezed
class BannerWatcherState with _$BannerWatcherState {
  const factory BannerWatcherState({
    required bool isLoading,
    Either<Failure, BannerEntity>? failureOrSuccess,
  }) = _BannerWatcherState;
  factory BannerWatcherState.initial() => const BannerWatcherState(
        isLoading: false,
      );
}
