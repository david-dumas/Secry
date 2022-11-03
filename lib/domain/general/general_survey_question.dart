class GeneralSurveyQuestion {
  final String questionId;
  final String title;
  final String type;

  GeneralSurveyQuestion({
    required this.questionId,
    required this.title,
    required this.type
  });

  factory GeneralSurveyQuestion.fromJsonMap(Map<String, dynamic> json) {
    return GeneralSurveyQuestion(
        questionId: json.containsKey('answerId') ? json['answerId'].toString() : '',
        title: json.containsKey('title') ? json['title'].toString() : '',
        type: json.containsKey('type') ? json['type'].toString() : ''
    );
  }
}
