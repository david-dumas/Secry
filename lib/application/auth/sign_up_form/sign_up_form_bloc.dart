import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:secry/domain/auth/i_authentication_interface.dart';
import 'package:secry/domain/auth/user.dart';
import 'package:secry/infrastructure/auth/authentication_repository.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthenticationInterface _authenticationRepository;

  SignUpFormBloc(this._authenticationRepository)
      : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>(_onEvent);
  }

  Future<void> _onEvent(
      SignUpFormEvent event, Emitter<SignUpFormState> emit) async {
    await event.map(
      initialized: (e) async {},
      signUpPressed: (e) async {
        final newUser = User(
            firstName: state.firstNameInput,
            lastName: state.lastNameInput,
            email: state.emailInput,
            phone: state.phoneDialCodeInput + state.phoneInput);

        _authenticationRepository.createNewUser(newUser, state.passwordInput);
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
    );
  }
}
