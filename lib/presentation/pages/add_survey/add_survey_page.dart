import 'dart:io' show Platform;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/domain/general/create_new_type.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:secry/application/add_survey/add_survey_page_bloc.dart';
import 'package:secry/presentation/pages/add_group/widgets/bottom_navigation_buttons_section.dart';

import 'package:secry/constants.dart';
import 'package:secry/injection.dart';

import 'add_survey_page_step_one.dart';
import 'add_survey_page_step_two.dart';

class AddSurveyPageAndroid extends StatelessWidget {
  const AddSurveyPageAndroid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppbar(
        title: tr('general_add_survey'),
        isSubpage: true,
        shouldHideBackButton: true,
        backgroundColor: globalWhite,
      ),
      resizeToAvoidBottomInset: false,
      body: AddSurveyPageContent(),
    );
  }
}

class AddSurveyPageIOS extends StatelessWidget {
  const AddSurveyPageIOS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddSurveyPageContent();
  }
}

class AddSurveyPageContent extends StatelessWidget {
  const AddSurveyPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddSurveyPageBloc>()..add(const AddSurveyPageEvent.initialized()),
      child: BlocConsumer<AddSurveyPageBloc, AddSurveyPageState>(
        listener: (context, state) {
          if (state.isCreateNewSurveyRequestExecuted) {
            Navigator.of(context).pop(state.isSurveySuccessfullyCreated);
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
                        ? AddSurveyPageStepOne(surveyTitle: state.surveyTitle)
                        : AddSurveyPageStepTwo(),
                  ),
                ),
                BottomNavigationButtonsSection(
                  stepIndex: state.currentStepIndex,
                  groupTitle: state.surveyTitle,
                  featureType: CreateNewType.newSurvey,
                  isShowingTopActionButton: state.currentStepIndex == 1,
                  topActionButtonText: tr('action_add_question'),
                  currentStepIndexUpdated: (newIndex) {
                    context.read<AddSurveyPageBloc>().add(AddSurveyPageEvent.currentStepIndexUpdated(newIndex));
                  },
                  createActionExecuted: () {
                    context.read<AddSurveyPageBloc>().add(AddSurveyPageEvent.newSurveyCreated());
                  },
                  popIfNeeded: () {
                    Navigator.of(context).pop(false);
                  },
                  topActionButtonPressed: () {
                    context.read<AddSurveyPageBloc>().add(AddSurveyPageEvent.questionAdded());
                  },
                ),
                Visibility(visible: Platform.isIOS, child: SizedBox(height: 30)),
              ],
            ),
          );
        },
      ),
    );
  }
}
