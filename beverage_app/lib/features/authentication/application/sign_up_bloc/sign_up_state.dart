part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required bool isProcessing,
    required bool showErrorMessage,
    Either<Failure, Unit>? failureOrSuccess,
    required Either<InvalidInputFailure, String> tradeName,
    required Either<InvalidInputFailure, String> outletName,
    required Either<InvalidInputFailure, String> gstn,
    required Either<InvalidInputFailure, String> address,
    required Either<InvalidInputFailure, String> address2,
    required Either<InvalidInputFailure, String> city,
    required Either<InvalidInputFailure, String> postalCode,
    required Either<InvalidInputFailure, String> state,
    required Either<InvalidInputFailure, String> country,
    // required Either<InvalidInputFailure, String> phoneNumber,
    required Either<InvalidInputFailure, String> email,
  }) = _SignUpState;
  factory SignUpState.initial() => SignUpState(
        isProcessing: false,
        showErrorMessage: false,
        tradeName: left(InvalidInputFailure()),
        outletName: left(InvalidInputFailure()),
        gstn: left(InvalidInputFailure()),
        address: left(InvalidInputFailure()),
        address2: left(InvalidInputFailure()),
        city: left(InvalidInputFailure()),
        postalCode: left(InvalidInputFailure()),
        state: left(InvalidInputFailure()),
        country: left(InvalidInputFailure()),
        // phoneNumber: left(InvalidInputFailure()),
        email: left(InvalidInputFailure()),
      );
}
