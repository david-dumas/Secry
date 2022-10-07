import 'package:flutter/material.dart';
import 'package:secry/application/filter_survey/question_type.dart';

import '../../../../constants.dart';

class QuestionType extends StatelessWidget {
  final String title;
  final String subtitle;
  final QuestionTypeEnum questionTypeOfWidget;
  final QuestionTypeEnum selectedQuestionType;
  final Function(QuestionTypeEnum value) questionTypeUpdated;

  const QuestionType({Key? key, required this.title, required this.subtitle, required this.questionTypeOfWidget, required this.selectedQuestionType, required this.questionTypeUpdated}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: fontSizeMedium)),
            SizedBox(height: marginXs),
            Text(subtitle)
          ],
        ),
        Spacer(),
        Transform.translate(
          offset: const Offset(10, 0),
          child: Transform.scale(
            scale: 1.4,
            child: Checkbox(
                value: this.questionTypeOfWidget == this.selectedQuestionType,
                splashRadius: 0,
                side: BorderSide(
                    width: 0.5
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)
                ),
                onChanged: (bool? value) {
                  if(value != null && value) {
                    questionTypeUpdated(this.questionTypeOfWidget);
                  }
                }
            ),
          ),
        )
      ],
    );
  }
}
