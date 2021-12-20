import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  SignUpFormBloc() : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>(_onEvent);
  }

  Future<void> _onEvent(
      SignUpFormEvent event, Emitter<SignUpFormState> emit) async {
    await event.map(
      initialized: (e) async {},
    );
  }
}
