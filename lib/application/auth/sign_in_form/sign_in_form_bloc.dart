import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:secry/domain/auth/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_auth_facade.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(_onEvent);
  }

  Future<void> _onEvent(SignInFormEvent event, Emitter<SignInFormState> emit) async {
    await event.map(
      initialized: (e) async {
        // TODO retrieve email from persistentStorage if available
      },
      isShowingClearEmailInputToggled: (e) async {
        emit(state.copyWith(isShowingClearEmailButton: e.isShowing));
      },
      emailChanged: (e) async {
        emit(state.copyWith(inputEmail: e.newEmail));

        if (e.newEmail.length == 0) {
          emit(state.copyWith(isShowingClearEmailButton: false));
        } else {
          emit(state.copyWith(isShowingClearEmailButton: true));
        }
      },
      isShowingPasswordToggled: (e) async {
        emit(state.copyWith(isShowingPassword: e.isShowing));
      },
      isShowingErrorMessagesUpdated: (e) async {
        emit(state.copyWith(isShowingErrorMessages: e.isShowing));
      },
      passwordChanged: (e) async {
        emit(state.copyWith(inputPassword: e.newPassword));
      },
      signInPressed: (e) async {
        if (state.isLoading) {
          return;
        }

        emit(state.copyWith(signInFailureOrUnitOption: none()));
        emit(state.copyWith(isLoading: true));

        final failureOrUnit = await _authFacade.signIn(email: state.inputEmail, password: state.inputPassword);
        await failureOrUnit.fold(
          (failure) {
            failure.maybeMap(
              emailAlreadyExists: (_) {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_combination_email_and_password_invalid'));
              },
              invalidEmail: (_) {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_combination_email_and_password_invalid'));
              },
              invalidPassword: (_) {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_combination_email_and_password_invalid'));
              },
              userNotFound: (_) {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_user_not_found'));
              },
              generalError: (_) {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_general'));
              },
              orElse: () {
                emit(state.copyWith(currentErrorMessageTag: 'account_error_general'));
              },
            );
            emit(state.copyWith(isShowingErrorMessages: true));
          },
          (userSignedInSuccessfully) {
            emit(state.copyWith(isShowingErrorMessages: false));
          },
        );

        emit(state.copyWith(isLoading: false));
        emit(state.copyWith(signInFailureOrUnitOption: optionOf(failureOrUnit)));
      },
    );
  }
}
