part of 'account_go_to_login_or_signup_page_bloc.dart';

@freezed
class AccountGoToLoginOrSignupPageState with _$AccountGoToLoginOrSignupPageState {
  const factory AccountGoToLoginOrSignupPageState({required GoogleSignInAccount? currentUser}) =
      _AccountGoToLoginOrSignupPageState;

  factory AccountGoToLoginOrSignupPageState.initial() => AccountGoToLoginOrSignupPageState(currentUser: null);
}
