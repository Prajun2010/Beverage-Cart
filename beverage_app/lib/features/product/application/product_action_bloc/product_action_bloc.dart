import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../../authentication/domain/repositories/i_authentication_repository.dart';
import '../../domain/repositories/i_product_repository.dart';

part 'product_action_bloc.freezed.dart';
part 'product_action_event.dart';
part 'product_action_state.dart';

@injectable
class ProductActionBloc extends Bloc<ProductActionEvent, ProductActionState> {
  final IAuthenticationRepository _authenticationRepository;
  final IProductRepository _productRepository;

  ProductActionBloc(
    this._authenticationRepository,
    this._productRepository,
  ) : super(ProductActionState.initial()) {
    on<ProductActionEvent>((event, emit) async {
      await event.map(
        placeOrder: (e) async {
          final authToken = await _authenticationRepository.getToken();
          Either<Failure, String>? failureOrSuccess;

          emit(state.copyWith(isProcessing: true, failureOrSuccess: null));

          failureOrSuccess = await _productRepository.placeOrder(
              data: e.data, authToken: authToken);

          // TODO: remove cart

          if (failureOrSuccess.isRight()) {
            await _productRepository.removeCart(authToken: authToken);
          }

          emit(
            state.copyWith(
              isProcessing: false,
              failureOrSuccess: failureOrSuccess,
            ),
          );
        },
        selectPaymentMethod: (e) {
          if (state.paymentSelectId == e.selectId) {
            emit(state.copyWith(paymentSelectId: -1));
            return;
          }
          emit(state.copyWith(paymentSelectId: e.selectId));
        },
        payment: (e) async {
          final authToken = await _authenticationRepository.getToken();
          Either<Failure, String>? failureOrSuccess;

          emit(state.copyWith(isProcessing: true, failureOrSuccess: null));

          var data = {
            'amount': e.amount,
          };

          // debugPrint('json data: $data >>>>>>>>>');

          failureOrSuccess = await _productRepository.payment(
            data: data,
            authToken: authToken,
            orderPlaceData: e.data,
          );

          if (failureOrSuccess.isRight()) {
            await _productRepository.removeCart(authToken: authToken);
          }

          emit(state.copyWith(
              failureOrSuccess: failureOrSuccess, isProcessing: false));
        },
        paymentOutstanding: (e) async {
          final authToken = await _authenticationRepository.getToken();
          Either<Failure, String>? failureOrSuccess;

          emit(state.copyWith(isProcessing: true, failureOrSuccess: null));

          var data = {
            'amount': e.amount,
          };

          failureOrSuccess = await _productRepository.paymentOutstanding(
            data: data,
            authToken: authToken,
          );

          emit(
            state.copyWith(
              failureOrSuccess: failureOrSuccess,
              isProcessing: false,
            ),
          );
        },
      );
    });
  }
}
