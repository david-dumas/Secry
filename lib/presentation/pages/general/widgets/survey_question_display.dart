import 'package:flutter/material.dart';

import 'package:secry/constants.dart';

import '../../../../domain/general/survey_questions_display_info_item.dart';
import '../../../../domain/surveys/survey_questions_info.dart';

class SurveyQuestionDisplay extends StatelessWidget {
  final SurveyQuestionDisplayInfoItem QuestionDisplayInfoItem;
  final SurveyQuestionsInfo QuestionAnswerInfoItem;
  final int currentQuestion;
  final int totalQuestions;
  final int stepIndex;

  const SurveyQuestionDisplay({Key? key, required this.stepIndex, required this.QuestionAnswerInfoItem, required this.QuestionDisplayInfoItem, required this.currentQuestion, required this.totalQuestions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: globalWhite,
      child: Padding(
        padding: const EdgeInsets.only(bottom: marginMedium),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      QuestionDisplayInfoItem.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      QuestionAnswerInfoItem.answer,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
