import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secry/domain/surveys/question_type.dart';
import 'package:secry/presentation/pages/add_survey/widgets/choose_question_type.dart';
import 'package:secry/presentation/pages/add_survey/widgets/delete_question_button.dart';
import 'package:secry/presentation/pages/add_survey/widgets/question_wrapper_title_description_section.dart';

class NewSurveyQuestionWrapper extends StatelessWidget {
  final int questionIndex;
  final QuestionType questionType;
  final double bottomMargin;

  final Function(QuestionType newQuestionType) questionTypeUpdated;
  final Function questionDeleted;

  NewSurveyQuestionWrapper(
      {Key? key,
      required this.questionIndex,
      required this.questionType,
      required this.bottomMargin,
      required this.questionTypeUpdated,
      required this.questionDeleted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuestionWrapperTitleDescriptionSection(questionIndex: questionIndex),
            Visibility(
              visible: questionIndex > 0,
              child: DeleteQuestionButton(questionIndex: questionIndex, questionDeleted: questionDeleted),
            )
          ],
        ),
        Container(height: 12),
        ChooseQuestionType(
          currentQuestionType: questionType,
          questionTypeChosen: (QuestionType questionType) {
            questionTypeUpdated(questionType);
          },
        ),
        Container(height: bottomMargin)
      ],
    );
  }
}
