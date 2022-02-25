import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<SplashEvent>(_onEvent);
  }

  Future<void> _onEvent(SplashEvent event, Emitter<SplashState> emit) async {
    await event.map(
      redirect: (e) async {
        emit(state.copyWith(
          routeOption: optionOf(e.route),
          delayInMilliseconds: e.delayInMilliseconds,
        ));
      },
    );
  }
}
