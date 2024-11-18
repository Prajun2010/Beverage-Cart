import 'package:beverage_app/core/infrastructure/endpoints.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/helpers/input_converter.dart';
import '../../../../core/infrastructure/error/failure.dart';
import '../../domain/repositories/i_authentication_repository.dart';

part 'verification_bloc.freezed.dart';
part 'verification_event.dart';
part 'verification_state.dart';

@injectable
class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  final InputConvert _inputConvert;
  final IAuthenticationRepository _authenticationRepository;
  VerificationBloc(
    this._inputConvert,
    this._authenticationRepository,
  ) : super(VerificationState.initial()) {
    on<VerificationEvent>(
      (event, emit) async {
        await event.map(
          verifyMobile: (e) async {
            emit(state.copyWith(isProcessing: true, failureOrSuccess: null));

            Either<Failure, Unit>? failureOrSuccess;

            if (e.mobileNumber == null) {
              if (state.mobileNumber.isRight()) {
                final jsonData = await _authenticationRepository.verifyMobile(
                  mobileNumber: state.mobileNumber.getOrElse(() => ''),
                  url: e.loginInitiate
                      ? AppEndPoints.mobileVerify
                      : AppEndPoints.mobileVerifyRegistration,
                );

                failureOrSuccess =
                    jsonData.fold((l) => left(l), (r) => right(unit));
              }

              emit(
                state.copyWith(
                  isProcessing: false,
                  showErrorMessage: true,
                  failureOrSuccess: failureOrSuccess,
                ),
              );
            } else {
              final jsonData = await _authenticationRepository.verifyMobile(
                mobileNumber: e.mobileNumber!,
                url: e.loginInitiate
                    ? AppEndPoints.mobileVerify
                    : AppEndPoints.mobileVerifyRegistration,
              );

              failureOrSuccess = jsonData.fold((l) => left(l), (r) => null);

              emit(state.copyWith(
                  isProcessing: false, failureOrSuccess: failureOrSuccess));
            }
          },
          verifyToken: (e) async {
            emit(state.copyWith(failureOrSuccess: null, isProcessing: true));
            Either<Failure, Unit>? failureOrSuccess;
            if (state.firstCode.isRight() &&
                state.secondCode.isRight() &&
                state.thirdCode.isRight() &&
                state.fourthCode.isRight() &&
                state.fifthCode.isRight() &&
                state.sixthCode.isRight()) {
              final data = {
                'mobile': e.phoneNumber,
                'otp': state.firstCode.getOrElse(() => '') +
                    state.secondCode.getOrElse(() => '') +
                    state.thirdCode.getOrElse(() => '') +
                    state.fourthCode.getOrElse(() => '') +
                    state.fifthCode.getOrElse(() => '') +
                    state.sixthCode.getOrElse(() => '')
              };
              failureOrSuccess = e.loginInitiate
                  ? await _authenticationRepository.verifyOtp(
                      data: data,
                    )
                  : await _authenticationRepository.verifyRegistrationOtp(
                      data: data,
                    );
            }
            emit(
              state.copyWith(
                isProcessing: false,
                showErrorMessage: true,
                failureOrSuccess: failureOrSuccess,
              ),
            );
          },
          changedNumber: (e) {
            emit(
              state.copyWith(
                showErrorMessage: false,
                failureOrSuccess: null,
                mobileNumber: _inputConvert.isValidNumber(
                    fieldName: 'Mobile number', value: e.phoneNumber),
                isProcessing: false,
              ),
            );
          },
          changedfirstOtp: (e) {
            emit(
              state.copyWith(
                firstCode: _inputConvert.notEmpty(value: e.code),
                failureOrSuccess: null,
              ),
            );
          },
          changedSecondOtp: (e) {
            emit(
              state.copyWith(
                secondCode: _inputConvert.notEmpty(value: e.code),
                failureOrSuccess: null,
              ),
            );
          },
          changedThirdOtp: (e) {
            emit(
              state.copyWith(
                thirdCode: _inputConvert.notEmpty(value: e.code),
                failureOrSuccess: null,
              ),
            );
          },
          changedFourthOtp: (e) {
            emit(
              state.copyWith(
                fourthCode: _inputConvert.notEmpty(value: e.code),
                failureOrSuccess: null,
              ),
            );
          },
          changedFifthOtp: (e) {
            emit(
              state.copyWith(
                fifthCode: _inputConvert.notEmpty(value: e.code),
                failureOrSuccess: null,
              ),
            );
          },
          changedSixthOtp: (e) {
            emit(
              state.copyWith(
                sixthCode: _inputConvert.notEmpty(value: e.code),
                failureOrSuccess: null,
              ),
            );
          },
        );
      },
    );
  }
}
