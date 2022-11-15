import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:secry/domain/chats/view/i_view_chats_repository.dart';
import 'package:xmpp_plugin/error_response_event.dart';
import 'package:xmpp_plugin/models/chat_state_model.dart';
import 'package:xmpp_plugin/models/connection_event.dart';
import 'package:xmpp_plugin/models/message_model.dart';
import 'package:xmpp_plugin/models/present_mode.dart';
import 'package:xmpp_plugin/success_response_event.dart';
import 'package:xmpp_plugin/xmpp_plugin.dart';

@Singleton(as: IViewChatsRepository)
class ViewChatsRepository extends IViewChatsRepository implements DataChangeEvents {
  static late XmppConnection xmpp;

  @override
  Future<void> initializeXmppConnection() async {
    final auth = {
      "user_jid":
      "justian@aurabit.nl/Android",
      "password": "secret",
      "host": "aurabit.nl",
      "port": '5222',
      "requireSSLConnection": true,
      "autoDeliveryReceipt": true,
      "useStreamManagement": false,
      "automaticReconnection": true,
    };

    XmppConnection.addListener(this);
    xmpp = XmppConnection(auth);
    await xmpp.start(_onError);
    await xmpp.login();
  }

  void _onError(Object error) {
    print(error);
  }

  @override
  void onXmppError(ErrorResponseEvent errorResponseEvent) {
    print('receiveEvent onXmppError: ${errorResponseEvent.toErrorResponseData().toString()}');
  }

  @override
  void onSuccessEvent(SuccessResponseEvent successResponseEvent) {
    print(
        'receiveEvent successEventReceive: ${successResponseEvent.toSuccessResponseData().toString()}');
  }

  @override
  void onChatMessage(MessageChat messageChat) {
    print('999999onChatMessage: ${messageChat.body}');
  }

  @override
  void onGroupMessage(MessageChat messageChat) {
    print('999999onGroupMessage: ${messageChat.body}');
  }

  @override
  void onNormalMessage(MessageChat messageChat) {
    print('onNormalMessage: ${messageChat.body}');
  }

  @override
  void onPresenceChange(PresentModel presentModel) {
    log('onPresenceChange ~~>>${presentModel.toJson()}');
  }

  @override
  void onChatStateChange(ChatState chatState) {
    log('onChatStateChange ~~>>$chatState');
  }

  @override
  void onConnectionEvents(ConnectionEvent connectionEvent) {
    log('onConnectionEvents ~~>>${connectionEvent.toJson()}');
  }
}