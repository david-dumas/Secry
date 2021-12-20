part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({required String firstNameInput}) =
      _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(firstNameInput: '');
}
