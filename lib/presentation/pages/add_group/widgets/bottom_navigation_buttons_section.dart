import 'dart:math';

import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:secry/domain/users/group_user.dart';
import 'package:secry/application/add_group/add_group_page_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/util/dialogs/dialog_helper.dart';

class BottomNavigationButtonsSection extends StatelessWidget {
  final int stepIndex;
  final String groupTitle;
  final List<GroupUser> groupMembers;

  final totalNumberOfSteps = 2;
  final horizontalButtonsSpacing = 12.0;
  final contentToEdgePadding = 20.0;

  BottomNavigationButtonsSection(
      {Key? key, required this.stepIndex, required this.groupTitle, required this.groupMembers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonWidth = (MediaQuery.of(context).size.width - (2 * contentToEdgePadding) - horizontalButtonsSpacing) / 2;
    final buttonHeight = 50.0;
    final padding = 20.0;

    return Container(
      height: buttonHeight + (2 * padding),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 1, color: kLineSeparatorColor))),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Row(
            children: [
              Container(
                width: buttonWidth,
                height: buttonHeight,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusXs)),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(cancelButtonGrayWhite),
                  ),
                  onPressed: () {
                    handlePreviousOrCancelActionForIndex(context, max(0, stepIndex));
                  },
                  child: Text(
                    stepIndex == 0 ? tr('action_cancel') : tr('action_previous'),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: kMediumGrayExtraDark),
                  ),
                ),
              ),
              SizedBox(
                width: horizontalButtonsSpacing,
              ),
              Container(
                width: buttonWidth,
                height: buttonHeight,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusXs)),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  ),
                  onPressed: () {
                    handleNextOrCreateActionForIndex(context,
                        currentIndex: stepIndex,
                        totalNumberOfSteps: totalNumberOfSteps,
                        groupTitle: groupTitle,
                        groupMembers: groupMembers);
                  },
                  child: Text(
                    stepIndex == 0 ? tr('action_next') : tr('action_create'),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: globalWhite),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validateIfNextStepChangeActionIsAllowed(
      {required int currentIndex, required String groupTitle, required List<GroupUser> groupMembers}) {
    if (currentIndex == 0) {
      return groupTitle.length > 0;
    } else if (currentIndex > 0) {
      return groupTitle.length > 0 && groupMembers.length > 0;
    } else {
      return false;
    }
  }

  void handlePreviousOrCancelActionForIndex(BuildContext context, int index) {
    final newIndex = max(0, index - 1);

    if (index != newIndex) {
      context.read<AddGroupPageBloc>().add(AddGroupPageEvent.currentStepIndexUpdated(newIndex));
    }

    if (index == 0) {
      Navigator.of(context).pop(false);
    }
  }

  void handleNextOrCreateActionForIndex(BuildContext context,
      {required int currentIndex,
      required int totalNumberOfSteps,
      required String groupTitle,
      required List<GroupUser> groupMembers}) {
    final newIndex = min(totalNumberOfSteps - 1, currentIndex + 1);
    final isNextStepAllowed = validateIfNextStepChangeActionIsAllowed(
        currentIndex: currentIndex, groupTitle: groupTitle, groupMembers: groupMembers);

    if (!isNextStepAllowed) {
      final warningTitle = tr('warning_title_general');
      var warningMessage = "";

      if (currentIndex == 0 && groupTitle.length == 0) {
        warningMessage = tr('warning_title_minimum_length');
      } else if (currentIndex > 0 && groupMembers.length == 0) {
        warningMessage = tr('warning_minimum_group_members');
      } else {
        warningMessage = tr('warning_fill_in_all_fields_to_continue');
      }

      DialogHelper().showAlertDialog(context, title: warningTitle, description: warningMessage);
      return;
    }

    if (currentIndex != newIndex) {
      context.read<AddGroupPageBloc>().add(AddGroupPageEvent.currentStepIndexUpdated(newIndex));
    }

    if (currentIndex >= (totalNumberOfSteps - 1)) {
      context.read<AddGroupPageBloc>().add(AddGroupPageEvent.newGroupCreated());
    }
  }
}
