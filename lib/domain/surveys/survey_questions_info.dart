class SurveyQuestionsInfo {
  final String id;
  final String title;
  final String type;
  final DateTime? createdAt;

  SurveyQuestionsInfo(
      {required this.id,
        required this.title,
        required this.type,
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
        createdAt: json.containsKey('createdAt')
            ? (json['createdAt'] != null
            ? DateTime.fromMillisecondsSinceEpoch(json['createdAt'] * 1000)
            : null)
            : null);
  }
}
