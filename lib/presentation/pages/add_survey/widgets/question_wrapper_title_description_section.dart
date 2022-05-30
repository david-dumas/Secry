import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class QuestionWrapperTitleDescriptionSection extends StatelessWidget {
  const QuestionWrapperTitleDescriptionSection({
    Key? key,
    required this.questionIndex,
  }) : super(key: key);

  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${tr('new_survey_question_title')} ${(questionIndex + 1).toString()}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Container(height: 4),
        Text(
          tr('new_survey_question_choose_type'),
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
