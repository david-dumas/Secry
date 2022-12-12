import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:secry/infrastructure/auth/authentication_repository.dart';

import '../../../domain/auth/i_auth_facade.dart';

part 'account_go_to_login_or_signup_page_event.dart';
part 'account_go_to_login_or_signup_page_state.dart';
part 'account_go_to_login_or_signup_page_bloc.freezed.dart';

@injectable
class AccountGoToLoginOrSignupPageBloc
    extends Bloc<AccountGoToLoginOrSignupPageEvent, AccountGoToLoginOrSignupPageState> {
  final IAuthFacade _authFacade;

  //google user object, returned by google api
  final GoogleSignInAccount currentUser;

  AccountGoToLoginOrSignupPageBloc(this._authFacade, this.currentUser)
      : super(AccountGoToLoginOrSignupPageState.initial()) {
    on<AccountGoToLoginOrSignupPageEvent>(_onEvent);
  }

  Future<void> _onEvent(
      AccountGoToLoginOrSignupPageEvent event, Emitter<AccountGoToLoginOrSignupPageState> emit) async {
    await event.map(
      signInWithGooglePressed: (e) async {
        final currentUser = await signInWithGoogle();
        emit(state.copyWith(currentUser: currentUser));
      },
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
