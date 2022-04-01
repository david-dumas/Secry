part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState(
      {required String inputEmail,
      required bool isShowingClearEmailButton,
      required bool isPasswordResetMailSuccessfullySent,
      required bool didTryToResetPassword,
      required bool isLoading}) = _ResetPasswordState;

  factory ResetPasswordState.initial() => ResetPasswordState(
      inputEmail: '',
      isShowingClearEmailButton: false,
      isPasswordResetMailSuccessfullySent: false,
      didTryToResetPassword: false,
      isLoading: false);
}
