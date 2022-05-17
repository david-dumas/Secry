import 'package:secry/domain/surveys/question_type.dart';

class Question {
  final String text;
  final QuestionType questionType;

  Question({required this.text, required this.questionType});
}
