import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/domain/general/survey_row_info.dart';

import '../../../../application/surveys/surveys_bloc.dart';
import '../../../../domain/general/survey_question_answers.dart';
import '../../../../domain/general/survey_questions_display_info_item.dart';
import '../../../../domain/surveys/survey_questions_info.dart';
import '../../../../injection.dart';
import '../../add_group/widgets/bottom_navigation_buttons_survey_section.dart';
import '../../general/widgets/survey_question_display.dart';

class RespondToSurveyPage extends StatelessWidget {
  final String title;
  final String groupId;

  const RespondToSurveyPage({Key? key, required this.title, required this.groupId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SurveysBloc>()..add(SurveysEvent.initialized(this.groupId)),
      child: BlocBuilder<SurveysBloc, SurveysState>(
        builder: (context, state) {
          print(context);
          print(state);
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(child: SizedBox(height: 20)),
                Expanded(
                    child: state.SurveyQuestionsInfo.length == 0
                        ? Container()
                        : SurveyQuestionDisplay(
                            QuestionDisplayInfoItem: SurveyQuestionDisplayInfoItem(
                                id: state.SurveyQuestionsInfo[state.currentQuestion].id,
                                title: state.SurveyQuestionsInfo[state.currentQuestion].title,
                                type: state.SurveyQuestionsInfo[state.currentQuestion].type),
                            currentQuestion: state.currentQuestion,
                            totalQuestions: state.totalQuestions,
                          )),
                BottomNavigationButtonsSurveySection(
                  stepIndex: state.currentQuestion,
                  totalQuestions: state.totalQuestions,
                  surveyQuestions: state.SurveyQuestionsInfo,
                  currentStepIndexUpdated: (newIndex) {
                    context.read<SurveysBloc>().add(SurveysEvent.currentQuestionUpdated(newIndex));
                  },
                  popIfNeeded: () {
                    Navigator.of(context).pop(false);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
