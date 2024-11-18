part of 'account_removal_bloc.dart';

@freezed
class AccountRemovalState with _$AccountRemovalState {
  const factory AccountRemovalState({Either<Failure, Unit>? failureOrSuccess}) =
      _AccountRemovalState;
  factory AccountRemovalState.initial() => AccountRemovalState();
}
