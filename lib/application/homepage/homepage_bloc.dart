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
        final groupsAndGeneralAboutInfo = await _activityRepository.getPrivateGroups(pageNumber: 1, pageSize: 10);
        await AvatarHelper().addSvgToGroupRowsInfo(groupsAndGeneralAboutInfo.groups);

        add(HomepageEvent.privateGroupsInfoUpdated(groupsAndGeneralAboutInfo.groups));

        if (groupsAndGeneralAboutInfo.generalInfo != null) {
          add(HomepageEvent.generalGroupInfoUpdated(groupsAndGeneralAboutInfo.generalInfo!));
        }
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
    );
  }
}
