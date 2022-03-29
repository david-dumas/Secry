import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_authentication_interface.dart';
import 'package:secry/domain/auth/user.dart';

import 'package:secry/domain/auth/auth_failure.dart';
import 'package:secry/domain/auth/i_auth_facade.dart';

part 'sign_up_form_bloc.freezed.dart';
part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthenticationInterface _authenticationRepository;
  final IAuthFacade _authFacade;

  SignUpFormBloc(this._authenticationRepository, this._authFacade) : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>(_onEvent);
  }

  Future<void> _onEvent(SignUpFormEvent event, Emitter<SignUpFormState> emit) async {
    await event.map(
      initialized: (e) async {},
      signUpPressed: (e) async {
        if (state.isLoading || state.isShowingErrorMessages) {
          return;
        }

        emit(state.copyWith(signUpFailureOrUnitOption: none()));
        emit(state.copyWith(isLoading: true));

        final newUser = User(
            firstName: state.firstNameInput,
            lastName: state.lastNameInput,
            email: state.emailInput,
            phone: state.phoneDialCodeInput + state.phoneInput);

        final signUpFailureOrUnit =
            await _authenticationRepository.createNewUser(user: newUser, password: state.passwordInput);

        await signUpFailureOrUnit.fold(
          (failure) {
            add(SignUpFormEvent.isShowingErrorMessagesUpdated(true));
            add(SignUpFormEvent.signUpFailureOrUnitOptionUpdated(optionOf(signUpFailureOrUnit)));

            failure.maybeMap(
              emailAlreadyExists: (_) {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_email_already_exists'));
              },
              invalidEmail: (_) {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_invalid_email'));
              },
              invalidPassword: (_) {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_password_invalid'));
              },
              generalError: (_) {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_general'));
              },
              orElse: () {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_general'));
              },
            );
          },
          (userCreatedSuccessfully) async {
            add(SignUpFormEvent.isShowingErrorMessagesUpdated(false));

            final loginFailureOrUnit = await _authFacade.signIn(email: state.emailInput, password: state.passwordInput);
            loginFailureOrUnit.fold((_) {
              add(SignUpFormEvent.signUpFailureOrUnitOptionUpdated(optionOf(loginFailureOrUnit)));
              // TODO log error
            }, (success) {
              add(SignUpFormEvent.isShowingErrorMessagesUpdated(false));
              add(SignUpFormEvent.signUpFailureOrUnitOptionUpdated(optionOf(loginFailureOrUnit)));
            });
          },
        );
        add(SignUpFormEvent.isLoadingUpdated(false));
      },
      firstNameChanged: (e) async {
        emit(state.copyWith(firstNameInput: e.newFirstName));
      },
      lastNameChanged: (e) async {
        emit(state.copyWith(lastNameInput: e.newLastName));
      },
      phoneDialCodeChanged: (e) async {
        emit(state.copyWith(phoneDialCodeInput: e.newPhoneDialCode));
      },
      phoneChanged: (e) async {
        emit(state.copyWith(phoneInput: e.newPhone));
      },
      emailChanged: (e) async {
        emit(state.copyWith(emailInput: e.newEmail));
      },
      firstPasswordChanged: (e) async {
        emit(state.copyWith(passwordInput: e.newFirstPassword));
      },
      repeatPasswordChanged: (e) async {
        emit(state.copyWith(repeatPasswordInput: e.newRepeatPassword));
      },
      isPasswordCheckedAndValidUpdated: (e) async {
        emit(state.copyWith(isPasswordCheckedAndValid: e.isValid));
      },
      isRepeatPasswordCheckedAndValidUpdated: (e) async {
        emit(state.copyWith(isRepeatPasswordCheckedAndValid: e.isValid));
      },
      isShowingPasswordToggled: (e) async {
        emit(state.copyWith(isShowingPassword: e.isShowing));
      },
      isShowingRepeatPasswordToggled: (e) async {
        emit(state.copyWith(isShowingRepeatPassword: e.isShowing));
      },
      isShowingPasswordValidationChecker: (e) async {
        emit(state.copyWith(isShowingPasswordValidationChecker: e.isShowing));
      },
      isShowingErrorMessagesUpdated: (e) async {
        emit(state.copyWith(isShowingErrorMessages: e.isShowing));
      },
      signUpFailureOrUnitOptionUpdated: (e) async {
        emit(state.copyWith(signUpFailureOrUnitOption: e.newFailureOrUnit));
      },
      isLoadingUpdated: (e) async {
        emit(state.copyWith(isLoading: e.isLoading));
      },
    );
  }
}
