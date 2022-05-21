import 'package:secry/domain/surveys/question_type.dart';

class Question {
  final String id;
  final String text;
  final QuestionType questionType;

  Question({required this.id, required this.text, required this.questionType});
}
