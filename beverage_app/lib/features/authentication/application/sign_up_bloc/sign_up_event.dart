part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.changedTradeName({String? tradeName}) =
      _ChangedTradeName;
  const factory SignUpEvent.changedOutletName({String? outletName}) =
      _ChangedOutletName;
  const factory SignUpEvent.changedGstn({String? gstn}) = _ChangedGstn;
  const factory SignUpEvent.changedAddress({String? address}) = _ChangedAddress;
  const factory SignUpEvent.changedAddress2({String? address2}) =
      _ChangedAddress2;
  const factory SignUpEvent.changedCity({String? city}) = _ChangedCity;
  const factory SignUpEvent.changedPostal({String? postal}) = _ChangedPostal;
  const factory SignUpEvent.changedState({String? state}) = _ChangedState;
  const factory SignUpEvent.changedCountry({String? country}) = _ChangedCountry;
  // const factory SignUpEvent.changedPhoneNumber({String? phoneNumber}) =
  //     _ChangedPhoneNumber;
  const factory SignUpEvent.changedEmail({String? email}) = _ChangedEmail;
  const factory SignUpEvent.pressedSubmit({required String phoneNumber}) =
      _PressedSubmit;
}
