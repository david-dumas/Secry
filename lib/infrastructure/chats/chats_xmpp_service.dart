import 'dart:developer';

import 'package:secry/presentation/pages/home/chat_page.dart';
import 'package:xmpp_plugin/error_response_event.dart';
import 'package:xmpp_plugin/models/chat_state_model.dart';
import 'package:xmpp_plugin/models/connection_event.dart';
import 'package:xmpp_plugin/models/message_model.dart';
import 'package:xmpp_plugin/models/present_mode.dart';
import 'package:xmpp_plugin/success_response_event.dart';
import 'package:xmpp_plugin/xmpp_plugin.dart';

class ChatsXmppService implements DataChangeEvents {
  static late XmppConnection flutterXmpp;
  List<MessageChat> events = [];
  List<PresentModel> presentMo = [];
  String connectionStatus = "Disconnected";

  Future<void> connect() async {
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
    flutterXmpp = XmppConnection(auth);
    await flutterXmpp.start(_onError);
    await flutterXmpp.login();

    flutterXmpp.joinMucGroup("nieuwetest");
    await flutterXmpp.requestMamMessages("floris@aurabit.nl", "0", "1667330736140", "20000000");
  }

  void _onError(Object error) {
    // TODO handle error
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
    events.add(messageChat);
    print('999999onChatMessage: ${messageChat.body}');
  }

  @override
  void onGroupMessage(MessageChat messageChat) {
    events.add(messageChat);
    print('999999onGroupMessage: ${messageChat.body}');
  }

  @override
  void onNormalMessage(MessageChat messageChat) {
    events.add(messageChat);
    print('onNormalMessage: ${messageChat.body}');
  }

  @override
  void onPresenceChange(PresentModel presentModel) {
    presentMo.add(presentModel);
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