import 'package:flutter/material.dart';
import 'package:secry/domain/general/general_list_cell_info_item.dart';
import 'package:secry/presentation/widgets/multi_avatar/avatar_painter.dart';

import 'package:secry/constants.dart';

import '../../../../domain/general/survey_question_answers.dart';
import '../../../../domain/general/survey_questions_display_info_item.dart';

class SurveyQuestionDisplay extends StatelessWidget {
  final SurveyQuestionDisplayInfoItem QuestionDisplayInfoItem;
  final int currentQuestion;
  final int totalQuestions;

  const SurveyQuestionDisplay({Key? key, required this.QuestionDisplayInfoItem, required this.currentQuestion, required this.totalQuestions}) : super(key: key);

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
                      QuestionDisplayInfoItem.type,
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
