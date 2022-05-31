import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/add_chat/add_chat_page_bloc.dart';

import 'package:secry/constants.dart';
import 'package:secry/domain/general/create_new_type.dart';
import 'package:secry/injection.dart';
import 'package:secry/presentation/pages/add_chat/add_chat_page_step_one.dart';
import 'package:secry/presentation/pages/add_group/widgets/bottom_navigation_buttons_section.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

class AddChatPageAndroid extends StatelessWidget {
  const AddChatPageAndroid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppbar(
        title: tr('general_add_chat'),
        isSubpage: true,
        shouldHideBackButton: true,
        backgroundColor: globalWhite,
      ),
      resizeToAvoidBottomInset: false,
      body: AddChatPageContent(),
    );
  }
}

class AddChatPageIOS extends StatelessWidget {
  const AddChatPageIOS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddChatPageContent();
  }
}

class AddChatPageContent extends StatelessWidget {
  const AddChatPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AddChatPageBloc>()..add(const AddChatPageEvent.initialized()),
      child: BlocConsumer<AddChatPageBloc, AddChatPageState>(
        listener: (context, state) {
          if (state.isCreateNewChatRequestExecuted) {
            if (state.isChatSuccessfullyCreated) {
              Navigator.of(context).pop();
            } else {
              // TODO show pop-up with something went wrong
            }
          }
        },
        builder: (context, state) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.93,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                    visible: Platform.isIOS, child: SizedBox(height: 20)),
                Expanded(
                  child: SingleChildScrollView(
                      child: AddChatPageStepOne(
                    chatTitle: state.chatTitle,
                    chatImage: state.chatImage,
                  )),
                ),
                BottomNavigationButtonsSection(
                  stepIndex: 0,
                  featureTitle: state.chatTitle,
                  featureType: CreateNewType.newChat,
                  currentStepIndexUpdated: (newIndex) {},
                  createActionExecuted: () {
                    context
                        .read<AddChatPageBloc>()
                        .add(AddChatPageEvent.newChatCreated());
                  },
                  popIfNeeded: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                Visibility(
                    visible: Platform.isIOS, child: SizedBox(height: 30)),
              ],
            ),
          );
        },
      ),
    );
  }
}
