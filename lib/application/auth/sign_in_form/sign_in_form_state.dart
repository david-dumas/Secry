part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({required int initialState}) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(initialState: 0);
}
