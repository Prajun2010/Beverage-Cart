import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/i_authentication_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthenticationRepository _authenticationRepository;
  AuthBloc(this._authenticationRepository) : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (_) async {
          final response = await _authenticationRepository.authCheckRequested();

          response.fold(
            (l) => emit(const AuthState.unauthenticated()),
            (r) => emit(const AuthState.authenticated()),
          );
        },
        signedOut: (_) async {
          await _authenticationRepository.logout();
          emit(const AuthState.unauthenticated());
        },
      );
    });
  }
}
