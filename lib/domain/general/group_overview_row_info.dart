class GroupOverviewRowInfo {
  final String title;
  final String lastMessage;
  final int timeIndication;

  const GroupOverviewRowInfo({
    required this.title,
    required this.lastMessage,
    required this.timeIndication,
  });

  factory GroupOverviewRowInfo.fromJsonMap(Map<String, dynamic> json) {
    return GroupOverviewRowInfo(
        title: json['title'], lastMessage: json['lastMessage'], timeIndication: json['timeIndication']);
  }
}
