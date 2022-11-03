class SurveyAnswerInfo {
  final String answerId;
  final String answer;

  SurveyAnswerInfo({
    required this.answerId,
    required this.answer
  });

  factory SurveyAnswerInfo.fromJsonMap(Map<String, dynamic> json) {
    return SurveyAnswerInfo(
        answerId: json.containsKey('answerId') ? json['answerId'].toString() : '',
        answer:
            json.containsKey('answertitle') ? json['answertitle'] : ''
    );
  }
}
