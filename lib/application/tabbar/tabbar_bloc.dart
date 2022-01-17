import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tabbar_event.dart';
part 'tabbar_state.dart';
part 'tabbar_bloc.freezed.dart';

@injectable
class TabbarBloc extends Bloc<TabbarEvent, TabbarState> {
  TabbarBloc() : super(TabbarState.initial()) {
    on<TabbarEvent>(_onEvent);
  }

  Future<void> _onEvent(TabbarEvent event, Emitter<TabbarState> emit) async {
    await event.map(
      initialized: (e) async {},
      selectedIndexChanged: (e) async {
        emit(state.copyWith(selectedIndex: e.index));
        emit(state.copyWith(currentTitleTagForSelectedIndex: state.titleTagsForSelectedIndex[state.selectedIndex]));
      },
    );
  }
}
