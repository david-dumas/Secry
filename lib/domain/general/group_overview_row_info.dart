import 'package:flutter_svg/flutter_svg.dart';
import 'package:secry/domain/chats/last_chat_message.dart';

class GroupOverviewRowInfo {
  final String id;
  final String title;
  final String? imageUrl;
  final LastChatMessage? lastChatMessage;
  final DateTime? createdAt;
  DrawableRoot? svg;

  GroupOverviewRowInfo(
      {required this.id,
      required this.title,
      this.imageUrl = null,
      this.lastChatMessage = null,
      required this.createdAt,
      this.svg = null});

  factory GroupOverviewRowInfo.fromJsonMap(Map<String, dynamic> json) {
    return GroupOverviewRowInfo(
        id: json.containsKey('id') ? json['id'].toString() : '',
        title: json.containsKey('title') ? json['title'] : '',
        imageUrl: json.containsKey('imageUrl') ? (json['imageUrl'] != null ? json['imageUrl'] : null) : null,
        lastChatMessage: json.containsKey('lastChatMessage')
            ? (json['lastChatMessage'] != null ? LastChatMessage.fromJsonMap(json['lastChatMessage']) : null)
            : null,
        createdAt: json.containsKey('createdAt')
            ? (json['createdAt'] != null ? DateTime.fromMillisecondsSinceEpoch(json['createdAt'] * 1000) : null)
            : null);
  }
}
