import 'package:secry/domain/chats/last_chat_message.dart';

class GeneralChatInfo {
  final String id;
  final String title;
  final LastChatMessage? lastChatMessage;
  final DateTime? createdAt;

  GeneralChatInfo({required this.id, required this.title, this.lastChatMessage = null, this.createdAt = null});

  factory GeneralChatInfo.fromJsonMap(Map<String, dynamic> json) {
    return GeneralChatInfo(
      id: json.containsKey('id') ? (json['id'] != null ? json['id'] : '') : '',
      title: json.containsKey('title') ? (json['title'] != null ? json['title'] : '') : '',
      lastChatMessage: json.containsKey('lastChatMessage')
          ? (json['lastChatMessage'] != null ? LastChatMessage.fromJsonMap(json['lastChatMessage']) : null)
          : null,
      createdAt: json.containsKey('createdAt')
          ? (json['createdAt'] != null ? DateTime.fromMillisecondsSinceEpoch(json['createdAt'] * 1000) : null)
          : null,
    );
  }
}
