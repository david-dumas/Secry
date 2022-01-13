part of 'reset_password_bloc.dart';

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required String inputEmail,
    required bool isShowingClearEmailButton,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => ResetPasswordState(inputEmail: '', isShowingClearEmailButton: false);
}
