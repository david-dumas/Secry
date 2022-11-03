import 'package:secry/domain/general/general_survey_question.dart';

class SurveyRowInfo {
  final String id;
  final String? title;
  final String? type;
  final List<GeneralSurveyQuestion>? answers;

  SurveyRowInfo({
    required this.id,
    this.title,
    this.type,
    this.answers
  });

  factory SurveyRowInfo.fromJsonMap(Map<String, dynamic> json) {
    return SurveyRowInfo(
        id: json.containsKey('questionId') ? json['questionId'].toString() : '',
        title:
            json.containsKey('questiontitle') ? json['questiontitle'] : '',
        type: json.containsKey('questiontype') ? json['questiontype'] : '',
      answers: json.containsKey('answers')
        ? (json['answers'] != null ? json['answers'] : '')
        : '',
    );
  }
}
