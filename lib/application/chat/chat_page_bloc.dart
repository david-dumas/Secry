import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'chat_page_event.dart';
part 'chat_page_state.dart';
part 'chat_page_bloc.freezed.dart';

@injectable
class ChatPageBloc extends Bloc<ChatPageEvent, ChatPageState> {
  ChatPageBloc() : super(ChatPageState.initial()) {
    on<ChatPageEvent>((event, emit) async {
      await event.map(
        initialized: (e) async {},
      );
    });
  }
}
