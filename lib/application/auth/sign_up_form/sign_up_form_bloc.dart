import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_authentication_interface.dart';
import 'package:secry/domain/auth/user.dart';

part 'sign_up_form_bloc.freezed.dart';
part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthenticationInterface _authenticationRepository;

  SignUpFormBloc(this._authenticationRepository) : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>(_onEvent);
  }

  Future<void> _onEvent(SignUpFormEvent event, Emitter<SignUpFormState> emit) async {
    await event.map(
      initialized: (e) async {},
      signUpPressed: (e) async {
        final newUser = User(
            firstName: state.firstNameInput,
            lastName: state.lastNameInput,
            email: state.emailInput,
            phone: state.phoneDialCodeInput + state.phoneInput);

        var apiResponse = await _authenticationRepository.createNewUser(newUser, state.passwordInput);
        //print(apiResponse.toString());
        emit(state.copyWith(statusMessage: apiResponse));
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
      isShowingPasswordToggled: (e) async {
        emit(state.copyWith(isShowingPassword: e.isShowing));
      },
      isShowingRepeatPasswordToggled: (e) async {
        emit(state.copyWith(isShowingRepeatPassword: e.isShowing));
      },
    );
  }
}
