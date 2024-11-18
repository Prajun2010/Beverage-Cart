import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../../authentication/domain/repositories/i_authentication_repository.dart';
import '../../domain/entities/distributor_entity.dart';
import '../../domain/repositories/i_distributor_repoistory.dart';

part 'distributor_watcher_bloc.freezed.dart';
part 'distributor_watcher_event.dart';
part 'distributor_watcher_state.dart';

@injectable
class DistributorWatcherBloc
    extends Bloc<DistributorWatcherEvent, DistributorWatcherState> {
  final IAuthenticationRepository _authenticationRepository;
  final IDistributorRepository _distributorRepository;
  DistributorWatcherBloc(
    this._authenticationRepository,
    this._distributorRepository,
  ) : super(DistributorWatcherState.initial()) {
    on<DistributorWatcherEvent>((event, emit) async {
      await event.map(
        fetchDistributor: (_) async {
          final token = await _authenticationRepository.getToken();

          emit(state.copyWith(isProcessing: true, failureOrSuccess: null));

          final failureOrSuccess =
              await _distributorRepository.fetchDistributor(authToken: token);

          emit(state.copyWith(
              isProcessing: false, failureOrSuccess: failureOrSuccess));
        },
      );
    });
  }
}
