class SurveyQuestionGeneralInfo {
  final String questionId;
  final String title;
  final String type;

  SurveyQuestionGeneralInfo(
      {required this.questionId,
      required this.title,
      required this.type});

  factory SurveyQuestionGeneralInfo.fromJsonMap(
      Map<String, dynamic> json) {
    return SurveyQuestionGeneralInfo(
        questionId: json.containsKey('questionId')
            ? ((json['questionId'] is String) ? json['questionId'] : '')
            : '',
        title: json.containsKey('title')
            ? ((json['title'] is String) ? json['title'] : '')
            : '',
        type: json.containsKey('type')
            ? ((json['type'] is String) ? json['type'] : '')
            : '');
  }
}
