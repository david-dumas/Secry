import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/auth/i_auth_facade.dart';

part 'account_overview_event.dart';
part 'account_overview_state.dart';
part 'account_overview_bloc.freezed.dart';

@injectable
class AccountOverviewBloc extends Bloc<AccountOverviewEvent, AccountOverviewState> {
  final IAuthFacade _authFacade;

  AccountOverviewBloc(this._authFacade) : super(AccountOverviewState.initial()) {
    on<AccountOverviewEvent>(_onEvent);
  }

  Future<void> _onEvent(AccountOverviewEvent event, Emitter<AccountOverviewState> emit) async {
    await event.map(
      logoutPressed: (e) async {
        _authFacade.signOut();
      },
    );
  }
}
