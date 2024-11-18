import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/infrastructure/endpoints.dart';
import '../../../../../core/infrastructure/error/failure.dart';
import '../../../authentication/domain/repositories/i_authentication_repository.dart';
import '../../domain/entities/link_detail_entity.dart';
import '../../domain/repositories/i_profile_repository.dart';

part 'link_watcher_bloc.freezed.dart';
part 'link_watcher_event.dart';
part 'link_watcher_state.dart';

@injectable
class LinkWatcherBloc extends Bloc<LinkWatcherEvent, LinkWatcherState> {
  final IAuthenticationRepository _authenticationRepository;
  final IProfileRepository _profileRepository;
  LinkWatcherBloc(
    this._authenticationRepository,
    this._profileRepository,
  ) : super(LinkWatcherState.initial()) {
    on<LinkWatcherEvent>((event, emit) async {
      await event.map(started: (_) async {
        final authToken = await _authenticationRepository.getToken();

        Either<Failure, List<LinkDetailEntity>>? failureOrSuccess;

        failureOrSuccess = await _profileRepository.fetchLinks(
          authToken: authToken,
          url: AppEndPoints.links,
        );

        failureOrSuccess.fold((l) => null, (r) {
          emit(
            state.copyWith(
              creditLink: r
                  .firstWhereOrNull((element) => element.linkType == 'credit')
                  ?.link,
              privacyLink: r
                  .firstWhereOrNull((element) => element.linkType == 'privacy')
                  ?.link,
              requestProductLink: r
                  .firstWhereOrNull(
                      (element) => element.linkType == 'request-product')
                  ?.link,
              termsLink: r
                  .firstWhereOrNull((element) => element.linkType == 'terms')
                  ?.link,
            ),
          );
        });
      });
    });
  }
}
