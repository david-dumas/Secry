import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_auth_facade.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

@injectable
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final IAuthFacade _authFacade;

  ResetPasswordBloc(this._authFacade) : super(ResetPasswordState.initial()) {
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
        await _authFacade.resetPassword(email: state.inputEmail);
      },
      isShowingClearEmailInputToggled: (e) async {
        emit(state.copyWith(isShowingClearEmailButton: e.isShowing));
      },
    );
  }
}
