part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.initialized() = _SignInForm;
  const factory SignInFormEvent.isShowingClearEmailInputToggled(
      bool isShowing) = _IsShowingClearEmailInputToggled;
  const factory SignInFormEvent.isShowingPasswordToggled(bool isShowing) =
      _IsShowingPasswordToggled;
  const factory SignInFormEvent.isShowingErrorMessagesUpdated(bool isShowing) =
      _IsShowingErrorMessagesUpdated;
  const factory SignInFormEvent.signInPressed() = _SignInPressed;
  const factory SignInFormEvent.emailChanged(String newEmail) = _EmailChanged;
  const factory SignInFormEvent.passwordChanged(String newPassword) =
      _PasswordChanged;
  const factory SignInFormEvent.continueWithGooglePressed() =
      _ContinueWithGooglePressed;
  const factory SignInFormEvent.continueWithFacebookPressed() =
      _ContinueWithFacebookPressed;
  const factory SignInFormEvent.continueWithTwitterPressed() =
      _ContinueWithTwitterPressed;
}
