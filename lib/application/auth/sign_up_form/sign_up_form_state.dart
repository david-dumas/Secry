part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState(
      {required String statusMessage,
      required String firstNameInput,
      required String lastNameInput,
      required String emailInput,
      required String phoneInput,
      required String phoneDialCodeInput,
      required String passwordInput,
      required String repeatPasswordInput,
      required bool isShowingPassword,
      required bool isShowingRepeatPassword,
      required bool isShowingPasswordValidationChecker}) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
      firstNameInput: '',
      lastNameInput: '',
      emailInput: '',
      phoneInput: '',
      phoneDialCodeInput: '',
      passwordInput: '',
      repeatPasswordInput: '',
      statusMessage: '',
      isShowingPassword: false,
      isShowingRepeatPassword: false,
      isShowingPasswordValidationChecker: false);
}
