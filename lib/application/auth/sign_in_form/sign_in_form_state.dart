part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState(
      {required String inputEmail,
      required String inputPassword,
      required bool isShowingPassword,
      required bool isShowingErrorMessages,
      required String currentErrorMessageTag,
      required Option<Either<AuthFailure, Unit>> signInFailureOrUnitOption}) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
      inputEmail: '',
      inputPassword: '',
      isShowingPassword: false,
      isShowingErrorMessages: false,
      currentErrorMessageTag: '',
      signInFailureOrUnitOption: none());
}
