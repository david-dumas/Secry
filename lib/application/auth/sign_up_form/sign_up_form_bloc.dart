import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
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
      signUpPressed: (e) async {
        var dio = Dio();

        var formData = {
          'firstname': state.firstNameInput,
          'lastname': state.lastNameInput,
          'phoneNumber': state.phoneDialCodeInput + state.phoneInput,
          'password': state.passwordInput,
        };
        print(formData);
        try {
          var response = await dio.post(
            'https://sjno.nl/secry/v1/auth/user',
            data: formData,
            onSendProgress: (a, b) => print('Send : ${a / b}'),
            onReceiveProgress: (a, b) => print('Received : ${a / b}'),
          );
          var jsonData = json.decode(response.data);
          print(jsonData);
        } catch (e) {
          print(e);
        }
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
