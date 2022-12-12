part of 'account_go_to_login_or_signup_page_bloc.dart';

@freezed
class AccountGoToLoginOrSignupPageState with _$AccountGoToLoginOrSignupPageState {
  const factory AccountGoToLoginOrSignupPageState({required UserCredential? currentUserCredential}) =
      _AccountGoToLoginOrSignupPageState;

  factory AccountGoToLoginOrSignupPageState.initial() => AccountGoToLoginOrSignupPageState(currentUserCredential: null);
}

//add user signed in state
@freezed
class UserSignedInState with _$UserSignedInState {
  const factory UserSignedInState({required currentUser}) = _UserSignedInState;

  factory UserSignedInState.initial() => UserSignedInState(currentUser: null);
}
