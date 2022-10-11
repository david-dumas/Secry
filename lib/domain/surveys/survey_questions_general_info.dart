import 'package:secry/domain/surveys/survey_questions_info.dart';

class SurveyQuestionGeneralInfo {
  final String id;
  final String title;
  final DateTime? createdAt;
  final List<SurveyQuestionsInfo> questions;

  SurveyQuestionGeneralInfo(
      {required this.id,
        required this.title,
        this.createdAt = null,
        required this.questions});

  factory SurveyQuestionGeneralInfo.fromJsonMap(
      Map<String, dynamic> json) {
    return SurveyQuestionGeneralInfo(
        id: json.containsKey('id')
            ? ((json['id'] is String) ? json['id'] : '')
            : '',
        title: json.containsKey('title') ? json['title'] : '',
        createdAt: json.containsKey('createdAt')
            ? (json['createdAt'] != null
            ? DateTime.fromMillisecondsSinceEpoch(json['createdAt'] * 1000)
            : null)
            : null,
        questions: json.containsKey('question') ? json['question'] : []);
  }
}
