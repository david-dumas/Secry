import 'package:easy_localization/easy_localization.dart';
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
                          borderRadius: BorderRadius.circular(kButtonRadiusXxs),
                          borderSide: BorderSide.none
                        ),
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
              ))
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: pagePaddingAllSides,
          child: Column(
            children: [
              Text('message 1'),
              Text('message 2')
            ],
          ),
        ),
      )
    );
  }
}
