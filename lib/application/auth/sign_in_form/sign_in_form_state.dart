part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState(
      {required String inputEmail,
      required bool isShowingClearEmailButton,
      required String inputPassword,
      required bool isShowingPassword,
      required bool isShowingErrorMessages,
      required String currentErrorMessageTag,
      required Option<Either<AuthFailure, Unit>> signInFailureOrUnitOption}) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
      inputEmail: '',
      isShowingClearEmailButton: false,
      inputPassword: '',
      isShowingPassword: false,
      isShowingErrorMessages: false,
      currentErrorMessageTag: '',
      signInFailureOrUnitOption: none());
}
