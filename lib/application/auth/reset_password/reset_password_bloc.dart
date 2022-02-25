import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_authentication_interface.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

@injectable
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final IAuthenticationInterface _authApiRepository;

  ResetPasswordBloc(this._authApiRepository) : super(ResetPasswordState.initial()) {
    on<ResetPasswordEvent>(_onEvent);
  }

  Future<void> _onEvent(ResetPasswordEvent event, Emitter<ResetPasswordState> emit) async {
    await event.map(
      emailChanged: (e) async {
        emit(state.copyWith(inputEmail: e.newEmail));

        if (e.newEmail.length == 0) {
          emit(state.copyWith(isShowingClearEmailButton: false));
        } else {
          emit(state.copyWith(isShowingClearEmailButton: true));
        }
      },
      resetPasswordPressed: (e) async {
        final isPasswordSuccessfullyReset = await _authApiRepository.resetPassword(email: state.inputEmail);
        emit(state.copyWith(isPasswordResetMailSuccessfullySent: isPasswordSuccessfullyReset));
      },
      isShowingClearEmailInputToggled: (e) async {
        emit(state.copyWith(isShowingClearEmailButton: e.isShowing));
        emit(state.copyWith(didTryToResetPassword: true));
      },
    );
  }
}
