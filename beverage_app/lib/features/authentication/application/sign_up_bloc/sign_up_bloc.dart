import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/helpers/input_converter.dart';
import '../../../../core/infrastructure/error/failure.dart';
import '../../domain/repositories/i_authentication_repository.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final InputConvert _inputConvert;
  final IAuthenticationRepository _authenticationRepository;
  SignUpBloc(
    this._inputConvert,
    this._authenticationRepository,
  ) : super(SignUpState.initial()) {
    on<SignUpEvent>((event, emit) async {
      await event.map(
        changedTradeName: (e) async {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              tradeName: _inputConvert.notEmpty(
                value: e.tradeName,
                fieldName: 'Trade Name',
              ),
            ),
          );
        },
        changedOutletName: (e) async {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              outletName: _inputConvert.notEmpty(
                value: e.outletName,
                fieldName: 'Outlet Name',
              ),
            ),
          );
        },
        changedGstn: (e) async {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              gstn: _inputConvert.notEmpty(
                value: e.gstn,
                fieldName: 'GSTN',
              ),
            ),
          );
        },
        changedAddress: (e) async {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              address: _inputConvert.notEmpty(
                value: e.address,
                fieldName: 'Address 1',
              ),
            ),
          );
        },
        changedAddress2: (e) async {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              address2: _inputConvert.notEmpty(
                value: e.address2,
                fieldName: 'Address 2',
              ),
            ),
          );
        },
        changedCity: (e) async {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              city: _inputConvert.notEmpty(
                value: e.city,
                fieldName: 'City',
              ),
            ),
          );
        },
        changedPostal: (e) async {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              postalCode: _inputConvert.notEmpty(
                value: e.postal,
                fieldName: 'Postal Code',
              ),
            ),
          );
        },
        changedState: (e) async {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              state: _inputConvert.notEmpty(
                value: e.state,
                fieldName: 'State',
              ),
            ),
          );
        },
        changedCountry: (e) async {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              country: _inputConvert.notEmpty(
                value: e.country,
                fieldName: 'Country',
              ),
            ),
          );
        },
        // changedPhoneNumber: (e) async {
        //   emit(
        //     state.copyWith(
        //       failureOrSuccess: null,
        //       phoneNumber: _inputConvert.isValidNumber(
        //         value: e.phoneNumber,
        //         fieldName: 'Phone Number',
        //       ),
        //     ),
        //   );
        // },
        changedEmail: (e) async {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              email: _inputConvert.isValidEmail(
                value: e.email,
                fieldName: 'Email',
              ),
            ),
          );
        },
        pressedSubmit: (e) async {
          emit(state.copyWith(failureOrSuccess: null, isProcessing: true));

          Either<Failure, Unit>? failureOrSuccess;

          if (state.tradeName.isRight() &&
              state.outletName.isRight() &&
              state.address.isRight() &&
              state.address2.isRight() &&
              state.country.isRight() &&
              state.state.isRight() &&
              // state.phoneNumber.isRight() &&
              state.city.isRight() &&
              state.gstn.isRight() &&
              state.postalCode.isRight() &&
              state.email.isRight() &&
              e.phoneNumber != '') {
            Map<String, dynamic> data = {
              'trade_name': state.tradeName.getOrElse(() => ''),
              'outlet_name': state.outletName.getOrElse(() => ''),
              'address_1': state.address.getOrElse(() => ''),
              'address_2': state.address2.getOrElse(() => ''),
              'country': state.country.getOrElse(() => ''),
              'state': state.state.getOrElse(() => ''),
              'contact_no': e.phoneNumber,
              'city': state.city.getOrElse(() => ''),
              'pin_code': state.postalCode.getOrElse(() => ''),
              'gst_no': state.gstn.getOrElse(() => ''),
              'email': state.email.getOrElse(() => ''),
            };

            failureOrSuccess =
                await _authenticationRepository.signUp(data: data);
          }

          emit(
            state.copyWith(
              failureOrSuccess: failureOrSuccess,
              isProcessing: false,
              showErrorMessage: true,
            ),
          );
        },
      );
    });
  }
}
