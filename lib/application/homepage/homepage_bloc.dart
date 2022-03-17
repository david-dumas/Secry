import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/general/general_group_info.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/groups/i_groups_repository.dart';
import 'package:secry/util/avatars/avatar_helper.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';
part 'homepage_bloc.freezed.dart';

@injectable
class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  final IGroupsRepository _activityRepository;

  HomepageBloc(this._activityRepository) : super(HomepageState.initial()) {
    on<HomepageEvent>(_onEvent);
  }

  Future<void> _onEvent(HomepageEvent event, Emitter<HomepageState> emit) async {
    await event.map(
      initialized: (e) async {
        fetchGroups(pageNumber: 1, pageSize: state.pageSize);
      },
      privateGroupsInfoUpdated: (e) async {
        emit(state.copyWith(privateGroupsRowsInfo: e.privateGroupsRowsInfo));
      },
      updatedIsShowingSearchBar: (e) async {
        emit(state.copyWith(isShowingSearchBar: e.isShowing));
        emit(state.copyWith(searchValue: ''));
      },
      searchValueUpdated: (e) async {
        emit(state.copyWith(searchValue: e.newValue));
      },
      generalGroupInfoUpdated: (e) async {
        emit(state.copyWith(generalGroupInfo: e.newGroupInfo));
      },
      scrolledToLoadMoreItems: (e) async {
        if (state.generalGroupInfo != null) {
          if (state.generalGroupInfo!.hasNextPage) {
            emit(state.copyWith(pageNumber: state.pageNumber + 1));
            fetchGroups(pageNumber: state.pageNumber, pageSize: state.pageSize);
          } else {
            // TODO show all items are fetched
          }
        } else {
          fetchGroups(pageNumber: 1, pageSize: state.pageSize);
        }
      },
      groupsRefreshed: (e) async {
        fetchGroups(pageNumber: 1, pageSize: state.pageSize);
      },
    );
  }

  Future<void> fetchGroups({required int pageNumber, required int pageSize}) async {
    final groupsAndGeneralAboutInfo =
        await _activityRepository.getPrivateGroups(pageNumber: pageNumber, pageSize: pageSize);
    await AvatarHelper().addSvgToGroupRowsInfo(groupsAndGeneralAboutInfo.groups);

    List<GroupOverviewRowInfo> privateGroupsRowsInfo = [];

    if (pageNumber == 1) {
      privateGroupsRowsInfo = [...[]..addAll(groupsAndGeneralAboutInfo.groups)];
    } else {
      privateGroupsRowsInfo = [...state.privateGroupsRowsInfo..addAll(groupsAndGeneralAboutInfo.groups)];
    }

    privateGroupsRowsInfo.sort((group1, group2) {
      return (group2.lastChatMessage?.createdAt?.millisecondsSinceEpoch ??
              (group2.createdAt?.millisecondsSinceEpoch ?? 0))
          .compareTo(group1.lastChatMessage?.createdAt?.millisecondsSinceEpoch ??
              (group1.createdAt?.millisecondsSinceEpoch ?? 0));
    });

    add(HomepageEvent.privateGroupsInfoUpdated(privateGroupsRowsInfo));

    if (groupsAndGeneralAboutInfo.generalInfo != null) {
      add(HomepageEvent.generalGroupInfoUpdated(groupsAndGeneralAboutInfo.generalInfo!));
    }
    emit(state.copyWith(isDataFetched: true));
  }
}
