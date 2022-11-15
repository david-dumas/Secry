import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/chat/chat_page_bloc.dart';
import 'package:secry/injection.dart';
import 'package:secry/presentation/pages/home/chat_message_type.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import 'package:secry/constants.dart';

class ChatPage extends StatelessWidget {
  final String title;
  final String chatId;

  const ChatPage({Key? key, required this.title, required this.chatId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _sc = ScrollController();

    return BlocProvider(
      create: (context) => getIt<ChatPageBloc>()..add(ChatPageEvent.initialized()),
      child: BlocBuilder<ChatPageBloc, ChatPageState>(
        builder: (context, state) {
          return Scaffold(
              appBar: GeneralAppbar(
                title: state.title,
                isSubpage: true,
                backgroundColor: globalWhite,
                isShowingBottomBorder: true,
              ),
              bottomNavigationBar: Container(
                  padding: MediaQuery.of(context).viewInsets,
                  color: kLightGray,
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                                filled: true,
                                fillColor: globalWhite,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(kButtonRadiusXxs), borderSide: BorderSide.none),
                                hintText: tr('chat_page_send_a_message'),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                              onPressed: () {},
                              splashRadius: 0.1,
                              icon: Icon(Icons.camera_alt, color: kMediumGrayV2, size: 24.0))
                        ],
                      ))),
              body: SingleChildScrollView(
                child: Padding(
                  padding: pagePaddingAllSides,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: state.messages.length,
                      itemBuilder: (context, index) {
                        return ChatMessage(
                            message: state.messages[index].body!,
                            chatMessageType: state.messages[index].senderJid != "boy@conference.aurabit.nl/floris"
                                ? ChatMessageType.sender
                                : ChatMessageType.receiver);
                      }),
                ),
              ));
        },
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String message;
  final ChatMessageType chatMessageType;
  final bool hasSentMultipleChatsInARow;

  const ChatMessage(
      {Key? key, required this.message, required this.chatMessageType, this.hasSentMultipleChatsInARow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Container(
      padding: chatMessageType == ChatMessageType.sender
          ? (EdgeInsets.fromLTRB(media.width * 0.30, hasSentMultipleChatsInARow ? (10.0) : (10.0), 0.0, 10.0))
          : (EdgeInsets.fromLTRB(0.0, hasSentMultipleChatsInARow ? (10.0) : (10.0), media.width * 0.30, 10.0)),
      child: Container(
          child: Text(message,
              style: TextStyle(color: chatMessageType == ChatMessageType.sender ? (globalWhite) : (globalBlack))),
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          decoration: BoxDecoration(
              color: chatMessageType == ChatMessageType.sender ? (kPrimaryColor) : (kLightGray),
              borderRadius: BorderRadius.circular(kButtonRadiusXxs))),
    );
  }
}
