import 'package:flutter_svg/flutter_svg.dart';

class GroupOverviewRowInfo {
  final String id;
  final String title;
  final String lastMessage;
  final String timeIndication;
  DrawableRoot? svg;

  GroupOverviewRowInfo(
      {required this.id,
      required this.title,
      required this.lastMessage,
      required this.timeIndication,
      this.svg = null});

  factory GroupOverviewRowInfo.fromJsonMap(Map<String, dynamic> json) {
    return GroupOverviewRowInfo(
        id: json.containsKey('id') ? json['id'] : '',
        title: json.containsKey('title') ? json['title'] : '',
        lastMessage: json.containsKey('lastMessage') ? json['lastMessage'] : '',
        timeIndication: json.containsKey('timeIndication') ? json['timeIndication'] : '');
  }
}
