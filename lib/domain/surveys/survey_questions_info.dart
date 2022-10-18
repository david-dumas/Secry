class SurveyQuestionsInfo {
  final String id;
  final String title;
  final String type;
  final List answers;
  final DateTime? createdAt;

  SurveyQuestionsInfo(
      {required this.id,
        required this.title,
        required this.type,
        required this.answers,
        this.createdAt = null});

  factory SurveyQuestionsInfo.fromJsonMap(Map<String, dynamic> json) {
    return SurveyQuestionsInfo(
        id: json.containsKey('questionId')
            ? (json['questionId'] != null ? json['questionId'] : '')
            : '',
        title: json.containsKey('questiontitle')
            ? (json['questiontitle'] != null ? json['questiontitle'] : '')
            : '',
        type: json.containsKey('questiontype')
            ? (json['questiontype'] != null ? json['questiontype'] : '')
            : '',
        answers: json.containsKey('answers')
            ? (json['answers'] != null ? json['answers'] : '')
            : '',
        createdAt: json.containsKey('createdAt')
            ? (json['createdAt'] != null
            ? DateTime.fromMillisecondsSinceEpoch(json['createdAt'] * 1000)
            : null)
            : null);
  }
}
