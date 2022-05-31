part of 'add_chat_page_bloc.dart';

@freezed
class AddChatPageState with _$AddChatPageState {
  const factory AddChatPageState(
      {required String chatTitle,
      required Image? chatImage,
      required bool isCreateNewChatRequestExecuted,
      required bool isChatSuccessfullyCreated}) = _AddChatPageState;

  factory AddChatPageState.initial() => AddChatPageState(
      chatTitle: "",
      chatImage: null,
      isCreateNewChatRequestExecuted: false,
      isChatSuccessfullyCreated: false);
}
