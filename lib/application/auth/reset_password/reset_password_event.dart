part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.emailChanged(String newEmail) = _EmailChanged;
  const factory ResetPasswordEvent.resetPasswordPressed() = _ResetPasswordPressed;
  const factory ResetPasswordEvent.isShowingClearEmailInputToggled(bool isShowing) = _IsShowingClearEmailInputToggled;
}
