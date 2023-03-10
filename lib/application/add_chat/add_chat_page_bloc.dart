import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_chat_page_event.dart';
part 'add_chat_page_state.dart';
part 'add_chat_page_bloc.freezed.dart';

@injectable //??
class AddChatPageBloc extends Bloc<AddChatPageEvent, AddChatPageState> {
  AddChatPageBloc() : super(AddChatPageState.initial()) {
    on<AddChatPageEvent>(_onEvent);
  }

  Future<void> _onEvent(AddChatPageEvent event, Emitter<AddChatPageState> emit) async {
    await event.map(
        initialized: (e) async {},
        chatTitleUpdated: (e) async {
          emit(state.copyWith(chatTitle: e.newTitle));
        },
        chatImageUpdated: (e) async {
          emit(state.copyWith(chatImage: e.newImage));
        },
        chatImageDeleted: (e) async {
          emit(state.copyWith(chatImage: null));
        },
        newChatCreated: (e) async {});
  }
}
