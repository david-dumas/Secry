import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/groups/i_groups_repository.dart';
import 'package:secry/presentation/widgets/multi_avatar/svg_wrapper.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';
part 'homepage_bloc.freezed.dart';

@injectable
class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  final IGroupsRepository _activityRepository;
  late final List<GroupOverviewRowInfo> _privateGroupsRowsInfoList;

  HomepageBloc(this._activityRepository) : super(HomepageState.initial()) {
    on<HomepageEvent>(_onEvent);
  }

  Future<void> _onEvent(HomepageEvent event, Emitter<HomepageState> emit) async {
    await event.map(
      initialized: (e) async {
        _privateGroupsRowsInfoList = await _activityRepository.getPrivateGroups(userId: "dummyUserId");
        await addSvgToGroupRowsInfo(_privateGroupsRowsInfoList);

        add(HomepageEvent.privateGroupsInfoUpdated(_privateGroupsRowsInfoList));
      },
      privateGroupsInfoUpdated: (e) async {
        emit(state.copyWith(privateGroupsRowsInfo: e.privateGroupsRowsInfo));
      },
      updatedIsShowingSearchBar: (e) async {
        emit(state.copyWith(isShowingSearchBar: e.isShowing));
      },
      searchValueUpdated: (e) async {
        emit(state.copyWith(searchValue: e.newValue));
      },
      privateGroupAvatarSvgsUpdated: (e) async {
        emit(state.copyWith(privateGroupAvatarSvgs: e.newAvatarSvgs));
      },
    );
  }

  Future<void> addSvgToGroupRowsInfo(List<GroupOverviewRowInfo> infoRows) async {
    final listWithSvgs = await _generateAvatarSvgs(_privateGroupsRowsInfoList.length);

    for (int i = 0; i < _privateGroupsRowsInfoList.length; i++) {
      if (listWithSvgs.length > i) {
        _privateGroupsRowsInfoList[i].svg = listWithSvgs[i];
      }
    }
  }

  Future<List<DrawableRoot?>> _generateAvatarSvgs(int amountOfAvatars) async {
    final randomizer = new Random();
    final List<DrawableRoot?> avatarDrawables = [];

    for (int i = 0; i < amountOfAvatars; i++) {
      String avatarSvg = multiavatar(
          DateTime(randomizer.nextInt(2022), randomizer.nextInt(12), randomizer.nextInt(28)).toIso8601String());

      final generatedLogo = await SvgWrapper(avatarSvg).generateLogo();
      avatarDrawables.insert(0, generatedLogo);
    }

    return avatarDrawables;
  }
}
