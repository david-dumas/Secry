class SurveyQuestionsInfo {
  final String answerId;
  final String answer;

  SurveyQuestionsInfo(
      {required this.answerId,
        required this.answer});

  factory SurveyQuestionsInfo.fromJsonMap(Map<String, dynamic> json) {
    return SurveyQuestionsInfo(
        answerId: json.containsKey('questionId')
            ? (json['questionId'] != null ? json['questionId'] : '')
            : '',
        answer: json.containsKey('questiontitle')
            ? (json['questiontitle'] != null ? json['questiontitle'] : '')
            : '');
  }
}
