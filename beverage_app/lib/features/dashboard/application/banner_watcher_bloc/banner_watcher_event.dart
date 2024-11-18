part of 'banner_watcher_bloc.dart';

@freezed
class BannerWatcherEvent with _$BannerWatcherEvent {
  const factory BannerWatcherEvent.fetchBanner() = _FetchBanner;
}
