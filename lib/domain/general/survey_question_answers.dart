class SurveyQuestionAnswers {
  final String answerId;
  final String answer;

  SurveyQuestionAnswers({
    required this.answerId,
    required this.answer
  });

  factory SurveyQuestionAnswers.fromJsonMap(Map<String, dynamic> json) {
    print(SurveyQuestionAnswers);
    return SurveyQuestionAnswers(
        answerId: json.containsKey('answerId') ? json['answerId'].toString() : '',
        answer:
        json.containsKey('answer') ? json['answer'] : '');
  }
}
