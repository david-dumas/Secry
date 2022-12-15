import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'package:secry/infrastructure/auth/authentication_repository.dart';

part 'account_go_to_login_or_signup_page_event.dart';
part 'account_go_to_login_or_signup_page_state.dart';
part 'account_go_to_login_or_signup_page_bloc.freezed.dart';

@injectable
class AccountGoToLoginOrSignupPageBloc
    extends Bloc<AccountGoToLoginOrSignupPageEvent, AccountGoToLoginOrSignupPageState> {
  AccountGoToLoginOrSignupPageBloc() : super(AccountGoToLoginOrSignupPageState.initial()) {
    on<AccountGoToLoginOrSignupPageEvent>(_onEvent);
  }

  Future<void> _onEvent(
      AccountGoToLoginOrSignupPageEvent event, Emitter<AccountGoToLoginOrSignupPageState> emit) async {
    await event.map(
      signInWithGooglePressed: (e) async {
        final currentUser = await signInWithGoogle();
        emit(state.copyWith(currentUser: currentUser));
      },
    );
  }
}
