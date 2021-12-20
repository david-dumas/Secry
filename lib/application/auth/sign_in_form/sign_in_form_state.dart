part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState(
      {required String inputEmail,
      required String inputPassword,
      required bool isShowingErrorMessages,
      required String currentErrorMessageTag}) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
      inputEmail: '',
      inputPassword: '',
      isShowingErrorMessages: false,
      currentErrorMessageTag: '');
}
