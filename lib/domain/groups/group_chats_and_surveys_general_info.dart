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
}
