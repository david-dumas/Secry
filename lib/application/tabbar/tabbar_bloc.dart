import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:secry/domain/auth/i_auth_facade.dart';

part 'tabbar_event.dart';
part 'tabbar_state.dart';
part 'tabbar_bloc.freezed.dart';

@injectable
class TabbarBloc extends Bloc<TabbarEvent, TabbarState> {
  final IAuthFacade _authFacade;

  TabbarBloc(this._authFacade) : super(TabbarState.initial()) {
    on<TabbarEvent>(_onEvent);
  }

  Future<void> _onEvent(TabbarEvent event, Emitter<TabbarState> emit) async {
    await event.map(
      initialized: (e) async {
        if (_authFacade.getSignedInUser().isSome()) {
          add(TabbarEvent.isUserSignedInUpdated(true));
        }

        FirebaseAuth.instance.authStateChanges().listen((User? user) {
          if (user == null) {
            add(TabbarEvent.isUserSignedInUpdated(false));
            add(TabbarEvent.selectedIndexChanged(3));
          } else {
            add(TabbarEvent.isUserSignedInUpdated(true));
            add(TabbarEvent.selectedIndexChanged(0));
          }
        });
      },
      selectedIndexChanged: (e) async {
        emit(state.copyWith(selectedIndex: e.index));
        emit(state.copyWith(currentTitleTagForSelectedIndex: state.titleTagsForSelectedIndex[state.selectedIndex]));
      },
      isUserSignedInUpdated: (e) async {
        emit(state.copyWith(isUserSignedIn: e.isSignedIn));
      },
    );
  }
}
