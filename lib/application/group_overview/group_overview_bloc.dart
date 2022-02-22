import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/chats/i_chats_repository.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/surveys/i_surveys_repository.dart';
import 'package:secry/util/avatars/avatar_helper.dart';

part 'group_overview_event.dart';
part 'group_overview_state.dart';
part 'group_overview_bloc.freezed.dart';

@injectable
class GroupOverviewBloc extends Bloc<GroupOverviewEvent, GroupOverviewState> {
  final IChatsRepository _chatsRepository;
  final ISurveysRepository _surveysRepository;

  GroupOverviewBloc(this._chatsRepository, this._surveysRepository) : super(GroupOverviewState.initial()) {
    on<GroupOverviewEvent>(_onEvent);
  }

  Future<void> _onEvent(GroupOverviewEvent event, Emitter<GroupOverviewState> emit) async {
    await event.map(
      initialized: (e) async {
        final mostRecentGroupChats = await _chatsRepository.getMostRecentChatsForGroup(groupId: e.groupId);
        await AvatarHelper().addSvgToGroupRowsInfo(mostRecentGroupChats);
        add(GroupOverviewEvent.chatInfoItemsUpdated(mostRecentGroupChats));

        final mostRecentGroupSurveys = await _surveysRepository.getMostRecentSurveysForGroup(groupId: e.groupId);
        await AvatarHelper().addSvgToGroupRowsInfo(mostRecentGroupSurveys);
        add(GroupOverviewEvent.surveyInfoItemsUpdated(mostRecentGroupSurveys));
      },
      chatInfoItemsUpdated: (e) async {
        emit(state.copyWith(chatInfoItems: e.chatInfoItems));
      },
      surveyInfoItemsUpdated: (e) async {
        emit(state.copyWith(surveyInfoItems: e.surveyInfoItems));
      },
    );
  }
}
