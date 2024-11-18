part of 'verification_bloc.dart';

@freezed
class VerificationEvent with _$VerificationEvent {
  const factory VerificationEvent.verifyMobile({
    String? mobileNumber,
    @Default(true) bool loginInitiate,
  }) = _VerifyMobile;
  const factory VerificationEvent.verifyToken({
    required String phoneNumber,
    @Default(true) bool loginInitiate,
  }) = _VerifyToken;
  const factory VerificationEvent.changedNumber({String? phoneNumber}) =
      _ChangedNumber;
  const factory VerificationEvent.changedfirstOtp({String? code}) =
      _ChangedFirstOtp;
  const factory VerificationEvent.changedSecondOtp({String? code}) =
      _ChangedSecondOtp;
  const factory VerificationEvent.changedThirdOtp({String? code}) =
      _ChangedThirdOtp;
  const factory VerificationEvent.changedFourthOtp({String? code}) =
      _ChangedFourthOtp;
  const factory VerificationEvent.changedFifthOtp({String? code}) =
      _ChangedFifthOtp;
  const factory VerificationEvent.changedSixthOtp({String? code}) =
      _ChangedSixthOtp;
}
