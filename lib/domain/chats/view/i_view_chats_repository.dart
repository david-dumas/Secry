import 'dart:async';

import 'package:xmpp_plugin/models/message_model.dart';

abstract class IViewChatsRepository {
  Future<void> initializeXmppConnection();
  Future<StreamController<MessageChat>> getStreamController();
  Future<void> sendGroupChatMessage({ required String message });
}