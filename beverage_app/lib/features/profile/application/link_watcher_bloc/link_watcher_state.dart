part of 'link_watcher_bloc.dart';

@freezed
class LinkWatcherState with _$LinkWatcherState {
  const factory LinkWatcherState({
    String? privacyLink,
    String? creditLink,
    String? termsLink,
    String? requestProductLink,
  }) = _LinkWatcherState;
  factory LinkWatcherState.initial() => const LinkWatcherState();
}
