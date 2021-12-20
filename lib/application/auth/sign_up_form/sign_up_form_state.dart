part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required String firstNameInput,
    required String lastNameInput,
    required String emailInput,
    required String phoneInput,
    required String phoneDialCodeInput,
    required String passwordInput,
    required String repeatPasswordInput,
  }) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
      firstNameInput: '',
      lastNameInput: '',
      emailInput: '',
      phoneInput: '',
      phoneDialCodeInput: '',
      passwordInput: '',
      repeatPasswordInput: '');
}
