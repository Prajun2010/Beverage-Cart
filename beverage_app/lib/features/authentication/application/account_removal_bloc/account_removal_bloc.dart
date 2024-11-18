import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../domain/repositories/i_authentication_repository.dart';

part 'account_removal_bloc.freezed.dart';
part 'account_removal_event.dart';
part 'account_removal_state.dart';

@injectable
class AccountRemovalBloc
    extends Bloc<AccountRemovalEvent, AccountRemovalState> {
  final IAuthenticationRepository _authenticationRepository;
  AccountRemovalBloc(this._authenticationRepository)
      : super(AccountRemovalState.initial()) {
    on<AccountRemovalEvent>((event, emit) async {
      await event.map(
        removeAccount: (_) async {
          final authToken = await _authenticationRepository.getToken();

          Either<Failure, Unit> failureOrSuccess =
              await _authenticationRepository.removeAccount(
                  authToken: authToken);

          emit(state.copyWith(failureOrSuccess: failureOrSuccess));
        },
      );
    });
  }
}
