part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.initialized() = _Initialized;
  const factory SignUpFormEvent.signUpPressed() = _signUpPressed;
  const factory SignUpFormEvent.firstNameChanged(String newFirstName) =
      _FirstNameChanged;
  const factory SignUpFormEvent.lastNameChanged(String newLastName) =
      _LastNameChanged;
  const factory SignUpFormEvent.phoneDialCodeChanged(String newPhoneDialCode) =
      _PhoneDialCodeChanged;
  const factory SignUpFormEvent.phoneChanged(String newPhone) = _PhoneChanged;
  const factory SignUpFormEvent.emailChanged(String newEmail) = _EmailChanged;
  const factory SignUpFormEvent.firstPasswordChanged(String newFirstPassword) =
      _FirstPasswordChanged;
  const factory SignUpFormEvent.repeatPasswordChanged(
      String newRepeatPassword) = _RepeatPasswordChanged;
}
