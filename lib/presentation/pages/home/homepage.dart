import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:secry/application/homepage/homepage_bloc.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import 'package:secry/constants.dart';
import 'package:secry/presentation/widgets/general/group_section.dart';

import 'package:secry/injection.dart';
import 'package:secry/presentation/widgets/multi_avatar/svg_wrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabbarBloc, TabbarState>(
      builder: (mainContext, mainState) {
        return BlocProvider(
          create: (context) => getIt<HomepageBloc>()..add(const HomepageEvent.initialized()),
          child: BlocBuilder<HomepageBloc, HomepageState>(
            builder: (context, state) {
              return Scaffold(
                appBar: GeneralAppbar(
                    title: tr(mainState.currentTitleTagForSelectedIndex),
                    backgroundColor: globalWhite,
                    isShowingSearchBar: state.isShowingSearchBar,
                    searchValue: state.searchValue,
                    trailingGestureWithIcon: GestureDetector(
                      onTap: () {
                        context
                            .read<HomepageBloc>()
                            .add(HomepageEvent.updatedIsShowingSearchBar(!state.isShowingSearchBar));
                      },
                      child: state.isShowingSearchBar
                          ? TextButton(
                              onPressed: () {
                                context.read<HomepageBloc>().add(HomepageEvent.updatedIsShowingSearchBar(false));
                              },
                              child: Text(tr('action_cancel')),
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero, minimumSize: Size(50, 30), alignment: Alignment.center))
                          : Icon(
                              Icons.search,
                              size: 26.0,
                              color: kDarkGray,
                            ),
                    ),
                    searchValueChanged: (newValue) {
                      context.read<HomepageBloc>().add(HomepageEvent.searchValueUpdated(newValue));
                    }),
                body: SingleChildScrollView(
                  child: GroupSection(
                    title: tr('home_my_groups'),
                    amountOfGroups: getFilteredPrivateGroupsInfo(state.privateGroupsRowsInfo, state.searchValue).length,
                    groupsInfo: getFilteredPrivateGroupsInfo(state.privateGroupsRowsInfo, state.searchValue),
                    titleRowActionButtonText: tr('general_add_group'),
                    emptyStateTitle: tr('action_create_new_group_title'),
                    emptyStateDescription: tr('action_create_new_group_description'),
                    emptyStateIcon: Icon(Icons.group_add),
                    titleRowTrailingAction: () {
                      // TODO handle 'add group' action
                    },
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  List<GroupOverviewRowInfo> getFilteredPrivateGroupsInfo(
      List<GroupOverviewRowInfo> groupsInfoToFilter, String filterText) {
    if (filterText.length < 1 || filterText == '') {
      return groupsInfoToFilter;
    } else {
      return groupsInfoToFilter
          .where((groupsInfo) =>
              groupsInfo.title.toLowerCase().contains(filterText) ||
              groupsInfo.lastMessage.toLowerCase().contains(filterText) ||
              groupsInfo.timeIndication.toString().toLowerCase().contains(filterText))
          .toList();
    }
  }
}
