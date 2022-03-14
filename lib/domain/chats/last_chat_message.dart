class LastChatMessage {
  final String sender;
  final String text;
  final DateTime? createdAt;

  LastChatMessage({required this.sender, required this.text, required this.createdAt});

  factory LastChatMessage.fromJsonMap(Map<String, dynamic> json) {
    return LastChatMessage(
      sender: json.containsKey('sender') ? (json['sender'] != null ? json['sender'] : '') : '',
      text: json.containsKey('text') ? (json['text'] != null ? json['text'] : '') : '',
      createdAt: json.containsKey('createdAt')
          ? (json['createdAt'] != null ? DateTime.fromMillisecondsSinceEpoch(json['createdAt']) : null)
          : null,
    );
  }
}
