import 'dart:io' show Platform;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:secry/constants.dart';
import 'package:secry/injection.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/application/add_group/add_group_page_bloc.dart';
import 'package:secry/presentation/pages/add_group/add_group_page_step_one.dart';
import 'package:secry/presentation/pages/add_group/widgets/bottom_navigation_buttons_section.dart';

import 'package:secry/domain/users/group_user.dart';
import 'add_group_page_step_two.dart';

class AddGroupPageAndroid extends StatelessWidget {
  const AddGroupPageAndroid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppbar(
        title: tr('general_add_group'),
        isSubpage: true,
        shouldHideBackButton: true,
        backgroundColor: globalWhite,
      ),
      resizeToAvoidBottomInset: false,
      body: AddGroupPageContent(),
    );
  }
}

class AddGroupPageIOS extends StatelessWidget {
  const AddGroupPageIOS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddGroupPageContent();
  }
}

class AddGroupPageContent extends StatelessWidget {
  const AddGroupPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddGroupPageBloc>()..add(const AddGroupPageEvent.initialized()),
      child: BlocConsumer<AddGroupPageBloc, AddGroupPageState>(
        listener: (context, state) {
          if (state.isCreateNewGroupRequestExecuted) {
            Navigator.of(context).pop(state.isGroupSuccessfullyCreated);
          }
        },
        builder: (context, state) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.93,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(visible: Platform.isIOS, child: SizedBox(height: 20)),
                Expanded(
                  child: SingleChildScrollView(
                    child: state.currentStepIndex == 0
                        ? AddGroupPageStepOne(groupTitle: state.groupTitle, groupImage: state.groupImage)
                        : AddGroupPageStepTwo(
                            searchValue: state.searchAllPeopleSearchValue,
                            usersForSearchQuery:
                                getUsersFromListThatAreNotInOtherList(state.usersForSearchQuery, state.groupMembers),
                            usersAddedToGroup: state.groupMembers,
                            areUsersFetched: state.areUsersForSearchUsersFetched,
                            isFetchingUsers: state.isFetchingUsersForSearch,
                          ),
                  ),
                ),
                BottomNavigationButtonsSection(
                  stepIndex: state.currentStepIndex,
                  groupTitle: state.groupTitle,
                  groupMembers: state.groupMembers,
                ),
                Visibility(visible: Platform.isIOS, child: SizedBox(height: 30)),
              ],
            ),
          );
        },
      ),
    );
  }

  List<GroupUser> getUsersFromListThatAreNotInOtherList(List<GroupUser> list1, List<GroupUser> list2) {
    return [...list1]..removeWhere(
        (usersForSearchQueryUser) => list2.firstWhereOrNull((user) => usersForSearchQueryUser.id == user.id) != null);
  }
}
