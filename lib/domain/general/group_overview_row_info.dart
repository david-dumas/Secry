import 'package:flutter_svg/flutter_svg.dart';

class GroupOverviewRowInfo {
  final String title;
  final String lastMessage;
  final int timeIndication;
  DrawableRoot? svg;

  GroupOverviewRowInfo({required this.title, required this.lastMessage, required this.timeIndication, this.svg = null});

  factory GroupOverviewRowInfo.fromJsonMap(Map<String, dynamic> json) {
    return GroupOverviewRowInfo(
        title: json['title'], lastMessage: json['lastMessage'], timeIndication: json['timeIndication']);
  }
}
