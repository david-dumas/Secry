import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';
import 'package:secry/domain/surveys/question_type.dart';

class ChooseQuestionType extends StatelessWidget {
  final QuestionType currentQuestionType;
  final Function(QuestionType questionType) questionTypeChosen;

  ChooseQuestionType({Key? key, this.currentQuestionType = QuestionType.openQuestion, required this.questionTypeChosen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: createChooseQuestionTypeButton(
                text: tr('new_survey_question_open_question'),
                isSelected: currentQuestionType == QuestionType.openQuestion,
                buttonQuestionType: QuestionType.openQuestion,
                buttonPressed: (questionType) {
                  questionTypeChosen(questionType);
                })),
        Container(width: 12),
        Expanded(
            child: createChooseQuestionTypeButton(
                text: tr('new_survey_question_closed_question'),
                isSelected: currentQuestionType == QuestionType.closedQuestion,
                buttonQuestionType: QuestionType.closedQuestion,
                buttonPressed: (questionType) {
                  questionTypeChosen(questionType);
                })),
      ],
    );
  }

  OutlinedButton createChooseQuestionTypeButton(
      {required String text,
      required bool isSelected,
      required QuestionType buttonQuestionType,
      required Function(QuestionType questionType) buttonPressed}) {
    final selectedOptionTextStyle = TextStyle(fontSize: 16, color: kPrimaryColor);
    final unselectedOptionTextStyle = TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: kMediumGray);

    return OutlinedButton(
      child: Text(
        text,
        style: isSelected ? selectedOptionTextStyle : unselectedOptionTextStyle,
      ),
      style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kButtonRadiusXxs),
          ),
          side: BorderSide(
            width: 1.0,
            color: isSelected ? kPrimaryColor : kMediumGray,
          ),
          backgroundColor: isSelected ? appIconColorBlue1 : globalWhite),
      onPressed: () {
        buttonPressed(buttonQuestionType);
      },
    );
  }
}
