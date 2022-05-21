import 'package:secry/domain/surveys/model/question.dart';
import 'package:secry/domain/surveys/question_type.dart';

class OpenQuestion extends Question {
  final String id;
  final String text;

  OpenQuestion({required this.id, required this.text})
      : super(id: id, text: text, questionType: QuestionType.openQuestion);
}
