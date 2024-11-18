part of 'profile_watcher_bloc.dart';

@freezed
class ProfileWatcherState with _$ProfileWatcherState {
  const factory ProfileWatcherState({
    required bool isLoading,
    Either<Failure, ProfileEntity>? failureOrSuccess,
    String? username,
  }) = _ProfileWatcherState;

  factory ProfileWatcherState.initial() => const ProfileWatcherState(
        isLoading: false,
      );
}
