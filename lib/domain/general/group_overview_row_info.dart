import 'package:flutter_svg/flutter_svg.dart';

class GroupOverviewRowInfo {
  final String id;
  final String title;
  final String? lastChatId;
  final String? lastMessageSender;
  final String? lastMessageText;
  final DateTime? lastMessageTime;
  final DateTime? createdAt;
  DrawableRoot? svg;

  GroupOverviewRowInfo(
      {required this.id,
      required this.title,
      required this.lastChatId,
      required this.lastMessageSender,
      required this.lastMessageText,
      required this.lastMessageTime,
      required this.createdAt,
      this.svg = null});

  factory GroupOverviewRowInfo.fromJsonMap(Map<String, dynamic> json) {
    return GroupOverviewRowInfo(
        id: json.containsKey('id') ? json['id'].toString() : '',
        title: json.containsKey('title') ? json['title'] : '',
        lastChatId:
            json.containsKey('lastChatId') ? (json['lastChatId'] != null ? json['lastChatId'].toString() : '') : '',
        lastMessageSender: json.containsKey('lastMessageSender')
            ? (json['lastMessageSender'] != null ? json['lastMessageSender'] : '')
            : '',
        lastMessageText:
            json.containsKey('lastMessageText') ? (json['lastMessageText'] != null ? json['lastMessageText'] : '') : '',
        lastMessageTime: json.containsKey('lastMessageTime')
            ? (json['lastMessageTime'] != null ? DateTime.parse(json['lastMessageTime']) : null)
            : null,
        createdAt: json.containsKey('createdAt')
            ? (json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null)
            : null);
  }
}
