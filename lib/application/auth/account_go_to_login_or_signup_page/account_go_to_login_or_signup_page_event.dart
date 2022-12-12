part of 'account_go_to_login_or_signup_page_bloc.dart';

@freezed
class AccountGoToLoginOrSignupPageEvent with _$AccountGoToLoginOrSignupPageEvent {
  //adding sign in event
  const factory AccountGoToLoginOrSignupPageEvent.signInWithGooglePressed() = _SignInWithGooglePressed;
  const factory AccountGoToLoginOrSignupPageEvent.continueWithGooglePressed() = _ContinueWithGooglePressed;
  const factory AccountGoToLoginOrSignupPageEvent.continueWithFacebookPressed() = _ContinueWithFacebookPressed;
  const factory AccountGoToLoginOrSignupPageEvent.continueWithTwitterPressed() = _ContinueWithTwitterPressed;
}
