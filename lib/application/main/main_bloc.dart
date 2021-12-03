import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<MainEvent>(_onEvent);
  }

  Future<void> _onEvent(MainEvent event, Emitter<MainState> emit) async {
    await event.map(
      initialized: (e) async {},
    );
  }
}
