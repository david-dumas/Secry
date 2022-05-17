import 'package:secry/domain/surveys/model/option_for_closed_question.dart';
import 'package:secry/domain/surveys/model/question.dart';
import 'package:secry/domain/surveys/question_type.dart';

class ClosedQuestion extends Question {
  final String text;
  final List<OptionForClosedQuestion> options;

  ClosedQuestion({required this.text, required this.options})
      : super(text: text, questionType: QuestionType.closedQuestion);
}
