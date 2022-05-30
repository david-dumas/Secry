import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:secry/domain/surveys/model/question.dart';
import 'package:secry/domain/surveys/model/survey_question_failure.dart';
import 'package:secry/domain/users/group_user.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/pages/add_group/widgets/bottom_navigation_buttons_top_action_section.dart';
import 'package:secry/util/dialogs/dialog_helper.dart';
import 'package:secry/domain/general/create_new_type.dart';
import 'package:secry/util/validation/survey_question_validator.dart';

class BottomNavigationButtonsSection extends StatelessWidget {
  final int stepIndex;
  final String featureTitle;
  final List<GroupUser>? groupMembers;
  final List<Question>? surveyQuestions;
  final CreateNewType featureType;

  final bool isShowingTopActionButton;
  final String topActionButtonText;

  final Function(int newIndex) currentStepIndexUpdated;
  final Function() createActionExecuted;
  final Function() popIfNeeded;
  final Function()? topActionButtonPressed;

  final totalNumberOfSteps = 2;
  final horizontalButtonsSpacing = 12.0;
  final contentToEdgePadding = 20.0;

  BottomNavigationButtonsSection(
      {Key? key,
      required this.stepIndex,
      required this.featureTitle,
      this.groupMembers = null,
      this.surveyQuestions = null,
      required this.featureType,
      this.isShowingTopActionButton = false,
      this.topActionButtonText = '',
      required this.currentStepIndexUpdated,
      required this.createActionExecuted,
      required this.popIfNeeded,
      this.topActionButtonPressed = null})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonWidth = (MediaQuery.of(context).size.width - (2 * contentToEdgePadding) - horizontalButtonsSpacing) / 2;
    final buttonHeight = 50.0;
    final padding = 20.0;
    final borderWidth = 1.0;

    return Container(
      height: buttonHeight +
          (2 * padding) +
          (isShowingTopActionButton ? buttonHeight : 0) +
          (isShowingTopActionButton ? padding : 0) +
          borderWidth,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(border: Border(top: BorderSide(width: borderWidth, color: kLineSeparatorColor))),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              Visibility(
                visible: isShowingTopActionButton,
                child: BottomNavigationButtonsTopActionSection(
                    topActionButtonText: topActionButtonText,
                    buttonHeight: buttonHeight,
                    bottomMargin: padding,
                    actionButtonPressed: topActionButtonPressed),
              ),
              Row(
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
                            featureTitle: featureTitle,
                            groupMembers: groupMembers,
                            surveyQuestions: surveyQuestions,
                            featureType: featureType);
                      },
                      child: Text(
                        stepIndex == 0 ? tr('action_next') : tr('action_create'),
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: globalWhite),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validateIfNextStepChangeActionIsAllowed(
      {required int currentIndex,
      required String featureTitle,
      required List<GroupUser>? groupMembers,
      required List<Question>? surveyQuestions,
      required CreateNewType featureType}) {
    if (currentIndex == 0) {
      return featureTitle.length > 0;
    } else if (currentIndex > 0) {
      if (featureType == CreateNewType.newGroup) {
        return featureTitle.length > 0 && (groupMembers?.length ?? 0) > 0;
      } else if (featureType == CreateNewType.newSurvey) {
        SurveyQuestionValidator questionValidator = SurveyQuestionValidator();

        return featureTitle.length > 0 &&
            !questionValidator.isAnyQuestionInvalid(surveyQuestions ?? []) &&
            surveyQuestions != null &&
            surveyQuestions.length > 0;
      } else {
        return featureTitle.length > 0;
      }
    } else {
      return false;
    }
  }

  void handlePreviousOrCancelActionForIndex(BuildContext context, int index) {
    final newIndex = max(0, index - 1);

    if (index != newIndex) {
      currentStepIndexUpdated(newIndex);
    }

    if (index == 0) {
      popIfNeeded();
    }
  }

  void handleNextOrCreateActionForIndex(BuildContext context,
      {required int currentIndex,
      required int totalNumberOfSteps,
      required String featureTitle,
      required List<GroupUser>? groupMembers,
      required List<Question>? surveyQuestions,
      required CreateNewType featureType}) {
    final newIndex = min(totalNumberOfSteps - 1, currentIndex + 1);
    final isNextStepAllowed = validateIfNextStepChangeActionIsAllowed(
        currentIndex: currentIndex,
        featureTitle: featureTitle,
        groupMembers: groupMembers,
        surveyQuestions: surveyQuestions,
        featureType: featureType);

    if (!isNextStepAllowed) {
      final warningTitle = tr('warning_title_general');
      var warningMessage = "";

      if (currentIndex == 0 && featureTitle.length == 0) {
        warningMessage = tr('warning_title_minimum_length');
      } else if (featureType == CreateNewType.newGroup) {
        if (currentIndex > 0 && groupMembers != null && groupMembers.length == 0) {
          warningMessage = tr('warning_minimum_group_members');
        }
      } else if (featureType == CreateNewType.newSurvey) {
        final surveyQuestionValidator = SurveyQuestionValidator();
        final isAnyQuestionInvalid = SurveyQuestionValidator().isAnyQuestionInvalid(surveyQuestions ?? []);

        if (isAnyQuestionInvalid) {
          for (int i = 0; i < (surveyQuestions?.length ?? 0); i++) {
            final question = surveyQuestions![i];

            // If question returns a Failure (thus is invalid)
            if (surveyQuestionValidator.surveyQuestionFailureOrUnit(question: question).isLeft()) {
              warningMessage = surveyQuestionValidator.surveyQuestionFailureOrUnit(question: question).fold(
                  (questionFailure) => surveyQuestionValidator.getErrorTextForFailure(failure: questionFailure),
                  (unit) => '');
            }
          }
        }
      } else {
        warningMessage = tr('warning_fill_in_all_fields_to_continue');
      }

      DialogHelper().showAlertDialog(context, title: warningTitle, description: warningMessage);
      return;
    }

    if (currentIndex != newIndex) {
      currentStepIndexUpdated(newIndex);
    }

    if (currentIndex >= (totalNumberOfSteps - 1)) {
      createActionExecuted();
    }
  }
}
