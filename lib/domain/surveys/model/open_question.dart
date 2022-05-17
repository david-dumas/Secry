import 'package:secry/domain/surveys/model/question.dart';
import 'package:secry/domain/surveys/question_type.dart';

class OpenQuestion extends Question {
  final String text;

  OpenQuestion({required this.text}) : super(text: text, questionType: QuestionType.openQuestion);
}
