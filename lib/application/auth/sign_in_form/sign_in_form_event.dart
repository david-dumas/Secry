part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.initialized() = _SignInForm;
  const factory SignInFormEvent.isShowingPasswordToggled(bool isShowing) = _IsShowingPasswordToggled;
  const factory SignInFormEvent.signInPressed() = _SignInPressed;
  const factory SignInFormEvent.emailChanged(String newEmail) = _EmailChanged;
  const factory SignInFormEvent.passwordChanged(String newPassword) = _PasswordChanged;
}
