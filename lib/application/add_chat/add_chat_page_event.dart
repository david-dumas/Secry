part of 'add_chat_page_bloc.dart';

@freezed
class AddChatPageEvent with _$AddChatPageEvent {
  const factory AddChatPageEvent.initialized() = _Initialized;
  const factory AddChatPageEvent.chatTitleUpdated(String newTitle) = _GroupTitleUpdated;
  const factory AddChatPageEvent.chatImageUpdated(Image newImage) = _GroupImageUpdated;
  const factory AddChatPageEvent.chatImageDeleted() = _GroupImageDeleted;
  const factory AddChatPageEvent.newChatCreated() = _NewGroupCreated;
}
