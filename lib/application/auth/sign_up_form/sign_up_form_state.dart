part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState(
      {required String firstNameInput,
      required String lastNameInput,
      required String emailInput,
      required String phoneInput,
      required String phoneDialCodeInput,
      required String passwordInput,
      required String repeatPasswordInput,
      required bool isShowingPassword,
      required bool isShowingRepeatPassword,
      required bool isPasswordCheckedAndValid,
      required bool isRepeatPasswordCheckedAndValid,
      required bool isShowingPasswordValidationChecker,
      required bool isShowingErrorMessages,
      required String currentErrorMessageTag,
      required Option<Either<AuthFailure, Unit>> signUpFailureOrUnitOption}) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
      firstNameInput: '',
      lastNameInput: '',
      emailInput: '',
      phoneInput: '',
      phoneDialCodeInput: '',
      passwordInput: '',
      repeatPasswordInput: '',
      isShowingPassword: false,
      isShowingRepeatPassword: false,
      isPasswordCheckedAndValid: false,
      isRepeatPasswordCheckedAndValid: false,
      isShowingPasswordValidationChecker: false,
      isShowingErrorMessages: false,
      currentErrorMessageTag: '',
      signUpFailureOrUnitOption: none());
}
