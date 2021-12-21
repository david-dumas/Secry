import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:secry/domain/auth/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_auth_facade.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(_onEvent);
  }

  Future<void> _onEvent(
      SignInFormEvent event, Emitter<SignInFormState> emit) async {
    await event.map(
      initialized: (e) async {},
      emailChanged: (e) async {
        emit(state.copyWith(inputEmail: e.newEmail));
      },
      passwordChanged: (e) async {
        emit(state.copyWith(inputPassword: e.newPassword));
      },
      signInPressed: (e) async {
        final failureOrUnit = await _authFacade.signIn(
            email: state.inputEmail, password: state.inputPassword);
        await failureOrUnit.fold(
          (failure) {
            emit(state.copyWith(isShowingErrorMessages: true));

            failure.maybeMap(
              emailAlreadyExists: (_) {
                emit(state.copyWith(
                    currentErrorMessageTag:
                        'account_error_email_already_exists'));
              },
              invalidEmail: (_) {
                emit(state.copyWith(
                    currentErrorMessageTag: 'account_error_invalid_email'));
              },
              invalidPassword: (_) {
                emit(state.copyWith(
                    currentErrorMessageTag: 'account_error_password_invalid'));
              },
              userNotFound: (_) {
                emit(state.copyWith(
                    currentErrorMessageTag: 'account_error_user_not_found'));
              },
              generalError: (_) {
                emit(state.copyWith(
                    currentErrorMessageTag: 'account_error_general'));
              },
              orElse: () {
                emit(state.copyWith(
                    currentErrorMessageTag: 'account_error_general'));
              },
            );
          },
          (userSignedInSuccessfully) {
            emit(state.copyWith(isShowingErrorMessages: false));
          },
        );
      },
    );
  }
}
