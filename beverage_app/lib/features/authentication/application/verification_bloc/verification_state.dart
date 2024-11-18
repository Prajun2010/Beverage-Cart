part of 'verification_bloc.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState({
    required bool isProcessing,
    required bool showErrorMessage,
    Either<Failure, Unit>? failureOrSuccess,
    required Either<InvalidInputFailure, String> firstCode,
    required Either<InvalidInputFailure, String> secondCode,
    required Either<InvalidInputFailure, String> thirdCode,
    required Either<InvalidInputFailure, String> fourthCode,
    required Either<InvalidInputFailure, String> fifthCode,
    required Either<InvalidInputFailure, String> sixthCode,
    required Either<InvalidInputFailure, String> mobileNumber,
  }) = _VerificationState;
  factory VerificationState.initial() => VerificationState(
        isProcessing: false,
        showErrorMessage: false,
        mobileNumber: left(InvalidInputFailure()),
        firstCode: left(InvalidInputFailure(msg: '')),
        secondCode: left(InvalidInputFailure(msg: '')),
        thirdCode: left(InvalidInputFailure(msg: '')),
        fourthCode: left(InvalidInputFailure(msg: '')),
        fifthCode: left(InvalidInputFailure(msg: '')),
        sixthCode: left(InvalidInputFailure(msg: '')),
      );
}
