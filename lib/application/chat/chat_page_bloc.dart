import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:xmpp_plugin/models/message_model.dart';

import '../../domain/chats/view/i_view_chats_repository.dart';

part 'chat_page_event.dart';
part 'chat_page_state.dart';
part 'chat_page_bloc.freezed.dart';

@injectable
class ChatPageBloc extends Bloc<ChatPageEvent, ChatPageState> {
  final IViewChatsRepository _iViewChatsRepository;
  late final subscription;

  ChatPageBloc(this._iViewChatsRepository) : super(ChatPageState.initial()) {
    on<ChatPageEvent>((event, emit) async {
      await event.map(
        initialized: (e) async {
          initializeChatServerConnection();
        },
        newMessageReceived: (e) async {
          final list = state.messages.toList();
          list.add(e.messageChat);
          emit(state.copyWith(messages: list));
        },
        sendGroupChatMessage: (e) async {
          this._iViewChatsRepository.sendGroupChatMessage(message: e.message);
        }
      );
    });
  }

  @override
  Future<void> close() async {
    //cancel streams
    super.close();
  }

  Future<void> initializeChatServerConnection() async {
    await this._iViewChatsRepository.initializeXmppConnection();
    this.subscription = await this._iViewChatsRepository.getStreamController();

    this.subscription.stream.listen((MessageChat messageChat) {
      if(!isClosed) {
        add(ChatPageEvent.newMessageReceived(messageChat));
      }
    });
  }
}
