import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:secry/constants.dart';
import 'package:secry/application/add_chat/add_chat_page_bloc.dart';
import 'package:secry/presentation/pages/add_group/widgets/choose_image_tile.dart';

class AddChatPageStepOne extends StatefulWidget {
  final Image? chatImage;
  final String chatTitle;

  AddChatPageStepOne({Key? key, required this.chatTitle, this.chatImage = null})
      : super(key: key);

  @override
  State<AddChatPageStepOne> createState() => _AddChatPageStepOneState();
}

class _AddChatPageStepOneState extends State<AddChatPageStepOne> {
  final TextEditingController _titleController = TextEditingController();
  final maximumTitleLength = 24; // TODO load from remote config

  @override
  void initState() {
    _titleController.text = widget.chatTitle;
    super.initState();
  }

  @override
  Widget build(BuildContext mainContext) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          TextFormField(
            controller: _titleController,
            autofocus: false, // _titleController.text.length == 0,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: tr('add_chat_title'),
              suffixText:
                  "${max(0, maximumTitleLength - _titleController.text.length)}",
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: kMediumGrayV2,
                  width: 1.0,
                ),
              ),
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(maximumTitleLength),
            ],
            validator: (String? value) {
              if (value == null) {
                return null;
              }
              if (value.isEmpty) {
                return tr('warning_field_is_empty');
              } else if (value.length > maximumTitleLength) {
                return tr('warning_too_many_characters');
              }
              return null;
            },
            onChanged: (newValue) {
              mainContext
                  .read<AddChatPageBloc>()
                  .add(AddChatPageEvent.chatTitleUpdated(newValue));
            },
          ),
          SizedBox(height: 30),
          Text(tr('add_chat_chat_picture')),
          SizedBox(height: 12),
          ChooseImageTile(
            mainContext: context,
            groupImage: widget.chatImage,
            addPictureText: tr('action_add_chat_picture'),
          )
        ],
      ),
    );
  }
}
