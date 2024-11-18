import 'package:beverage_app/core/infrastructure/endpoints.dart';
import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:beverage_app/features/authentication/domain/repositories/i_authentication_repository.dart';
import 'package:beverage_app/features/profile/domain/entities/profile_entity.dart';
import 'package:beverage_app/features/profile/domain/repositories/i_profile_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_watcher_event.dart';
part 'profile_watcher_state.dart';
part 'profile_watcher_bloc.freezed.dart';

@injectable
class ProfileWatcherBloc
    extends Bloc<ProfileWatcherEvent, ProfileWatcherState> {
  final IAuthenticationRepository _authenticationRepository;
  final IProfileRepository _profileRepository;
  ProfileWatcherBloc(
    this._authenticationRepository,
    this._profileRepository,
  ) : super(ProfileWatcherState.initial()) {
    on<ProfileWatcherEvent>((event, emit) async {
      await event.map(
          fetchProfileData: (_) async {
            final authToken = await _authenticationRepository.getToken();

            emit(state.copyWith(failureOrSuccess: null, isLoading: true));

            Either<Failure, ProfileEntity>? failureOrSuccess;
            String? username;

            failureOrSuccess = await _profileRepository.fetchProfile(
                authToken: authToken, url: AppEndPoints.customerProfile);

            failureOrSuccess.fold((l) => null, (r) {
              username = r.tradeName + ' ' + r.outletName;
            });

            emit(state.copyWith(
              failureOrSuccess: failureOrSuccess,
              isLoading: false,
              username: username,
            ));
          },
          fetchUserName: (_) {});
    });
  }
}
