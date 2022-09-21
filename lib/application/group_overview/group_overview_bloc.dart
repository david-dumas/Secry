import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/groups/feature_type.dart';
import 'package:secry/domain/groups/i_groups_repository.dart';
import 'package:secry/util/avatars/avatar_helper.dart';

part 'group_overview_event.dart';
part 'group_overview_state.dart';
part 'group_overview_bloc.freezed.dart';

@injectable
class GroupOverviewBloc extends Bloc<GroupOverviewEvent, GroupOverviewState> {
  final IGroupsRepository _groupsRepository;

  GroupOverviewBloc(this._groupsRepository) : super(GroupOverviewState.initial()) {
    on<GroupOverviewEvent>(_onEvent);
  }

  Future<void> _onEvent(GroupOverviewEvent event, Emitter<GroupOverviewState> emit) async {
    await event.map(
      initialized: (e) async {
        fetchChatsAndSurveys(groupId: e.groupId);
      },
      chatInfoItemsUpdated: (e) async {
        emit(state.copyWith(chatInfoItems: e.chatInfoItems));
      },
      surveyInfoItemsUpdated: (e) async {
        emit(state.copyWith(surveyInfoItems: e.surveyInfoItems));
      },
      groupOverviewRefreshed: (e) async {
        fetchChatsAndSurveys(groupId: e.groupId);
      },
      isFetchingUpdated: (e) async {
        emit(state.copyWith(isFetching: e.isFetching));
      },
      isDataFetchedUpdated: (e) async {
        emit(state.copyWith(isDataFetched: e.isFetched));
      },
      currentFeatureTypeUpdated: (e) async {
        emit(state.copyWith(currentFeatureType: e.newFeatureType));
      },
      groupRefreshed: (e) async {
        // TODO handle refresh
      },
    );
  }

  Future<void> fetchChatsAndSurveys({required String groupId}) async {
    add(GroupOverviewEvent.isFetchingUpdated(true));

    final groupChatsAndSurveysWithGeneralGroupInfo = await _groupsRepository.getHomepageGroupOverviewDummyData();
    // final groupChatsAndSurveysWithGeneralGroupInfo = await _groupsRepository.getChatsAndSurveys(groupId: groupId);

    if (groupChatsAndSurveysWithGeneralGroupInfo != null) {
      final mostRecentGroupChats = groupChatsAndSurveysWithGeneralGroupInfo.chats;
      final chatOverviewRows = mostRecentGroupChats
          .map((generalChatInfo) => GroupOverviewRowInfo(
              id: generalChatInfo.id, title: generalChatInfo.title, createdAt: generalChatInfo.createdAt))
          .toList();

      await AvatarHelper().addSvgToGroupRowsInfo(chatOverviewRows);
      add(GroupOverviewEvent.chatInfoItemsUpdated(chatOverviewRows));

      final mostRecentGroupSurveys = groupChatsAndSurveysWithGeneralGroupInfo.surveys;
      final surveyOverviewRows = mostRecentGroupSurveys
          .map((generalSurveyInfo) => GroupOverviewRowInfo(
              id: generalSurveyInfo.id, title: generalSurveyInfo.title, createdAt: generalSurveyInfo.createdAt))
          .toList();

      await AvatarHelper().addSvgToGroupRowsInfo(surveyOverviewRows);
      add(GroupOverviewEvent.surveyInfoItemsUpdated(surveyOverviewRows));

      add(GroupOverviewEvent.isFetchingUpdated(false));
      add(GroupOverviewEvent.isDataFetchedUpdated(true));
    }
  }
}
