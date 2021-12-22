import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  SignUpFormBloc() : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>(_onEvent);
  }

  Future<void> _onEvent(
      SignUpFormEvent event, Emitter<SignUpFormState> emit) async {
    await event.map(
      initialized: (e) async {},
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
