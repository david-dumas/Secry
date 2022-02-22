import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/chats/i_chats_repository.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/util/avatars/avatar_helper.dart';

part 'group_overview_event.dart';
part 'group_overview_state.dart';
part 'group_overview_bloc.freezed.dart';

@injectable
class GroupOverviewBloc extends Bloc<GroupOverviewEvent, GroupOverviewState> {
  final IChatsRepository _chatsRepository;

  GroupOverviewBloc(this._chatsRepository) : super(GroupOverviewState.initial()) {
    on<GroupOverviewEvent>(_onEvent);
  }

  Future<void> _onEvent(GroupOverviewEvent event, Emitter<GroupOverviewState> emit) async {
    await event.map(
      initialized: (e) async {
        final mostRecentGroupChats = await _chatsRepository.getMostRecentChatsForGroup(groupId: e.groupId);
        await AvatarHelper().addSvgToGroupRowsInfo(mostRecentGroupChats);

        add(GroupOverviewEvent.chatInfoItemsUpdated(mostRecentGroupChats));
      },
      chatInfoItemsUpdated: (e) async {
        emit(state.copyWith(chatInfoItems: e.chatInfoItems));
      },
    );
  }
}
