import 'dart:async';

import 'package:secry/domain/chats/chat_message.dart';
import 'package:xmpp_plugin/models/message_model.dart';

abstract class IViewChatsRepository {
  Future<void> initializeXmppConnection();
  Future<StreamController<MessageChat>> getStreamController();
  Future<void> sendGroupChatMessage({ required String message });
  Future<List<ChatMessage>> getAllChatMessages();
}