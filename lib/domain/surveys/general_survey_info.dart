class GeneralSurveyInfo {
  final String id;
  final String title;
  final DateTime? createdAt;

  GeneralSurveyInfo({required this.id, required this.title, this.createdAt = null});

  factory GeneralSurveyInfo.fromJsonMap(Map<String, dynamic> json) {
    return GeneralSurveyInfo(
      id: json.containsKey('id') ? (json['id'] != null ? json['id'] : '') : '',
      title: json.containsKey('title') ? (json['title'] != null ? json['title'] : '') : '',
      createdAt: json.containsKey('createdAt')
          ? (json['createdAt'] != null ? DateTime.fromMillisecondsSinceEpoch(json['createdAt'] * 1000) : null)
          : null,
    );
  }
}
