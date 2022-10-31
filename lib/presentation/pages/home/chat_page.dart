import 'package:flutter/material.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import 'package:secry/constants.dart';

class ChatPage extends StatelessWidget {
  final String title;
  final String chatId;

  const ChatPage({Key? key, required this.title, required this.chatId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppbar(
        title: title,
        isSubpage: true,
        backgroundColor: globalWhite,
        isShowingBottomBorder: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: pagePaddingAllSides,
          child: Text("chat id: ${chatId}"),
        ),
      ),
    );
  }
}
