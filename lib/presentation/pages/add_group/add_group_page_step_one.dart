import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:secry/constants.dart';
import 'package:secry/application/add_group/add_group_page_bloc.dart';
import 'package:secry/presentation/pages/add_group/widgets/choose_image_tile.dart';

class AddGroupPageStepOne extends StatefulWidget {
  final Image? groupImage;
  final String groupTitle;

  AddGroupPageStepOne({Key? key, required this.groupTitle, this.groupImage = null}) : super(key: key);

  @override
  State<AddGroupPageStepOne> createState() => _AddGroupPageStepOneState();
}

class _AddGroupPageStepOneState extends State<AddGroupPageStepOne> {
  final TextEditingController _titleController = TextEditingController();
  final maximumTitleLength = 24; // TODO load from remote config

  @override
  void initState() {
    _titleController.text = widget.groupTitle;
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
              labelText: tr('add_group_title'),
              suffixText: "${max(0, maximumTitleLength - _titleController.text.length)}",
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
              mainContext.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupTitleUpdated(newValue));
            },
          ),
          SizedBox(height: 30),
          Text(tr('add_group_group_picture')),
          SizedBox(height: 12),
          ChooseImageTile(
            mainContext: context,
            groupImage: widget.groupImage,
            addPictureText: tr('action_add_group_picture'),
            imageUpdated: (Image image) {
              mainContext.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupImageUpdated(image));
            },
            imageDeleted: () {
              mainContext.read<AddGroupPageBloc>().add(AddGroupPageEvent.groupImageDeleted());
            },
          )
        ],
      ),
    );
  }
}
