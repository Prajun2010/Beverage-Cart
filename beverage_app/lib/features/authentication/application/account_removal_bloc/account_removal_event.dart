part of 'account_removal_bloc.dart';

@freezed
class AccountRemovalEvent with _$AccountRemovalEvent {
  const factory AccountRemovalEvent.removeAccount() = _RemoveAccount;
}
