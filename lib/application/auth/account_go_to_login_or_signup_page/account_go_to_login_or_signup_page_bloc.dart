import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../domain/auth/i_auth_facade.dart';

part 'account_go_to_login_or_signup_page_event.dart';
part 'account_go_to_login_or_signup_page_state.dart';
part 'account_go_to_login_or_signup_page_bloc.freezed.dart';

@injectable
class AccountGoToLoginOrSignupPageBloc
    extends Bloc<AccountGoToLoginOrSignupPageEvent, AccountGoToLoginOrSignupPageState> {
  final IAuthFacade _authFacade;

  AccountGoToLoginOrSignupPageBloc(this._authFacade) : super(AccountGoToLoginOrSignupPageState.initial()) {
    on<AccountGoToLoginOrSignupPageEvent>(_onEvent);
  }

  Future<void> _onEvent(
      AccountGoToLoginOrSignupPageEvent event, Emitter<AccountGoToLoginOrSignupPageState> emit) async {
    await event.map(
      continueWithGooglePressed: (e) async {
        final currentUserCredential = await _authFacade.signInWithGoogle();
        emit(state.copyWith(currentUserCredential: currentUserCredential));
      },
      continueWithFacebookPressed: (e) async {
        final currentUserCredential = await _authFacade.signInWithFacebook();
        emit(state.copyWith(currentUserCredential: currentUserCredential));
      },
      continueWithTwitterPressed: (e) async {
        final currentUserCredential = await _authFacade.signInWithTwitter();
        emit(state.copyWith(currentUserCredential: currentUserCredential));
      },
    );
  }
}
