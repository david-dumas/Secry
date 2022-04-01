import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/constants.dart';
import 'package:secry/domain/general/pagination_info.dart';
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
        fetchGroups(pageNumber: 1, pageSize: state.paginationInfo?.pageSize ?? defaultPageSize);
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
      paginationInfoUpdated: (e) async {
        emit(state.copyWith(paginationInfo: e.paginationInfo));
      },
      scrolledToLoadMoreItems: (e) async {
        if (state.paginationInfo != null && (state.paginationInfo?.hasNextPage ?? false)) {
          final newPaginationInfo = new PaginationInfo(
              pageNumber: (state.paginationInfo!.pageNumber) + 1,
              pageSize: state.paginationInfo!.pageSize,
              totalPages: state.paginationInfo!.totalPages,
              totalCount: state.paginationInfo!.totalCount,
              hasPreviousPage: state.paginationInfo!.hasPreviousPage,
              hasNextPage: state.paginationInfo!.hasNextPage);
          emit(state.copyWith(paginationInfo: newPaginationInfo));

          fetchGroups(pageNumber: newPaginationInfo.pageNumber, pageSize: state.paginationInfo!.pageSize);
        }
      },
      groupsRefreshed: (e) async {
        fetchGroups(pageNumber: 1, pageSize: state.paginationInfo?.pageSize ?? defaultPageSize);
      },
      isFetchingInitialGroupsUpdated: (e) async {
        emit(state.copyWith(isFetchingInitialGroups: e.isFetching));
      },
      isFetchingMoreGroupsForScrollDownUpdated: (e) async {
        emit(state.copyWith(isFetchingMoreGroupsForScrollDown: e.isFetching));
      },
      isDataFetchedUpdated: (e) async {
        emit(state.copyWith(isDataFetched: e.isFetched));
      },
    );
  }

  Future<void> fetchGroups({required int pageNumber, required int pageSize}) async {
    if (pageNumber == 1) {
      add(HomepageEvent.isFetchingInitialGroupsUpdated(true));
    } else {
      add(HomepageEvent.isFetchingMoreGroupsForScrollDownUpdated(true));
    }

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

    if (groupsAndGeneralAboutInfo.paginationInfo != null) {
      add(HomepageEvent.paginationInfoUpdated(groupsAndGeneralAboutInfo.paginationInfo!));
    }
    if (pageNumber == 1) {
      add(HomepageEvent.isFetchingInitialGroupsUpdated(false));
    } else {
      add(HomepageEvent.isFetchingMoreGroupsForScrollDownUpdated(false));
    }
    add(HomepageEvent.isDataFetchedUpdated(true));
  }
}
