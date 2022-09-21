import 'package:secry/domain/chats/general_chat_info.dart';
import 'package:secry/domain/surveys/general_survey_info.dart';

class GroupChatsAndSurveysGeneralInfo {
  final String id;
  final String title;
  final String? imageUrl;
  final DateTime? createdAt;
  final List<GeneralChatInfo> chats;
  final List<GeneralSurveyInfo> surveys;

  GroupChatsAndSurveysGeneralInfo(
      {required this.id,
      required this.title,
      this.imageUrl = null,
      this.createdAt = null,
      required this.chats,
      required this.surveys});

  factory GroupChatsAndSurveysGeneralInfo.fromJsonMap(Map<String, dynamic> json) {
    return GroupChatsAndSurveysGeneralInfo(
        id: json.containsKey('id') ? ((json['id'] is String) ? json['id'] : '') : '',
        title: json.containsKey('title') ? json['title'] : '',
        imageUrl: json.containsKey('imageUrl') ? (json['imageUrl'] != null ? json['imageUrl'] : null) : null,
        createdAt: json.containsKey('createdAt')
            ? (json['createdAt'] != null ? DateTime.fromMillisecondsSinceEpoch(json['createdAt'] * 1000) : null)
            : null,
        chats: json.containsKey('chats') ? json['chats'] : [],
        surveys: json.containsKey('surveys') ? json['surveys'] : []
      );
  }
}
