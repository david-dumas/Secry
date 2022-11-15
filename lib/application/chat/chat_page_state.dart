part of 'chat_page_bloc.dart';

@freezed
class ChatPageState with _$ChatPageState {
  const factory ChatPageState(
      {required String title}) = _ChatPageState;

  factory ChatPageState.initial() => ChatPageState(title: "testTitel");
}
