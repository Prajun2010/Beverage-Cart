part of 'profile_watcher_bloc.dart';

@freezed
class ProfileWatcherEvent with _$ProfileWatcherEvent {
  const factory ProfileWatcherEvent.fetchProfileData() = _FetchProfileData;

  const factory ProfileWatcherEvent.fetchUserName() = _FetchUserName;
}
