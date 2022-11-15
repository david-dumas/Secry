import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/chats/view/i_view_chats_repository.dart';

part 'chat_page_event.dart';
part 'chat_page_state.dart';
part 'chat_page_bloc.freezed.dart';

@injectable
class ChatPageBloc extends Bloc<ChatPageEvent, ChatPageState> {
  final IViewChatsRepository _iViewChatsRepository;

  ChatPageBloc(this._iViewChatsRepository) : super(ChatPageState.initial()) {
    on<ChatPageEvent>((event, emit) async {
      await event.map(
        initialized: (e) async {
          initializeChatServerConnection();
        },
      );
    });
  }

  Future<void> initializeChatServerConnection() async {
    await this._iViewChatsRepository.initializeXmppConnection();
  }
}
