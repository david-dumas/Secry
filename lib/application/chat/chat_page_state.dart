part of 'chat_page_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ChatPageState with _$ChatPageState {
  const factory ChatPageState(
      {required String title,
      required List<MessageChat> messages}) = _ChatPageState;

  factory ChatPageState.initial() => ChatPageState(title: "testTitel", messages: []);
}
