import 'package:beverage_app/core/infrastructure/endpoints.dart';
import 'package:beverage_app/core/infrastructure/error/failure.dart';
import 'package:beverage_app/features/authentication/domain/repositories/i_authentication_repository.dart';
import 'package:beverage_app/features/dashboard/domain/entities/banner_entity.dart';
import 'package:beverage_app/features/dashboard/domain/repositories/i_dashboard_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'banner_watcher_event.dart';
part 'banner_watcher_state.dart';
part 'banner_watcher_bloc.freezed.dart';

@injectable
class BannerWatcherBloc extends Bloc<BannerWatcherEvent, BannerWatcherState> {
  final IAuthenticationRepository _authenticationRepository;
  final IDashboardRepository _dashboardRepository;
  BannerWatcherBloc(
    this._authenticationRepository,
    this._dashboardRepository,
  ) : super(BannerWatcherState.initial()) {
    on<BannerWatcherEvent>((event, emit) async {
      await event.map(
        fetchBanner: (_) async {
          final authToken = await _authenticationRepository.getToken();
          emit(state.copyWith(failureOrSuccess: null, isLoading: true));
          Either<Failure, BannerEntity>? failureOrSuccess;

          failureOrSuccess = await _dashboardRepository.fetchBanner(
              authToken: authToken, url: AppEndPoints.banner);

          emit(state.copyWith(
            failureOrSuccess: failureOrSuccess,
            isLoading: false,
          ));
        },
      );
    });
  }
}
