class ChatMessage {
  final String groupId;
  final String sender;
  final String time;
  final String messageId;
  final String body;

  ChatMessage({
    required this.groupId,
    required this.sender,
    required this.time,
    required this.messageId,
    required this.body
  });

  factory ChatMessage.fromMap(Map<String, dynamic> json) => new ChatMessage(
      groupId: json["id"],
      sender: json["sender"],
      time: json["time"],
      messageId: json["message_id"],
      body: json["body"]
  );

  Map<String, dynamic> toMap() {
    return {
      'group_id': groupId,
      'sender': sender,
      'time': time,
      'message_id': messageId,
      'body': body
    };
  }
}