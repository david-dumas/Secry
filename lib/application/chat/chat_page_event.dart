part of 'chat_page_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ChatPageEvent with _$ChatPageEvent {
  const factory ChatPageEvent.initialized() = _Initialized;
  const factory ChatPageEvent.newMessageReceived(MessageChat messageChat) = _NewMessageReceived;
  const factory ChatPageEvent.sendGroupChatMessage(String message) = _sendGroupChatMessage;
}