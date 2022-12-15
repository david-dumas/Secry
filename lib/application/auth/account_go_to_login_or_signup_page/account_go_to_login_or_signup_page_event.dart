part of 'account_go_to_login_or_signup_page_bloc.dart';

@freezed
class AccountGoToLoginOrSignupPageEvent with _$AccountGoToLoginOrSignupPageEvent {
  const factory AccountGoToLoginOrSignupPageEvent.signInWithGooglePressed() = _SignInWithGooglePressed;
}
