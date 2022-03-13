class NewGroup {
  final String title;
  final String imageUrl;
  final List<String> memberIds;

  NewGroup({required this.title, required this.imageUrl, required this.memberIds});

  Map<String, dynamic> toJson() => {'title': title, 'imageUrl': imageUrl, 'memberIds': memberIds};
}
