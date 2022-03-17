import 'dart:io' show Platform;
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:secry/application/homepage/homepage_bloc.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:secry/presentation/pages/add_group/add_group_page.dart';

import 'package:secry/constants.dart';
import 'package:secry/presentation/widgets/general/group_section.dart';

import 'package:secry/injection.dart';
import 'package:secry/util/search/search_helper.dart';
import 'package:secry/presentation/routes/router.gr.dart';
import 'group_overview_page.dart';

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
                body: RefreshIndicator(
                  onRefresh: () async {
                    context.read<HomepageBloc>().add(HomepageEvent.groupsRefreshed());
                  },
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: pagePaddingAllSides,
                      child: GroupSection(
                        title: tr('home_my_groups'),
                        totalAmountOfGroups: state.generalGroupInfo?.totalNumberOfGroups ?? 0,
                        cellInfoItems: SearchHelper()
                            .getFilteredGeneralListCellItems(state.privateGroupsRowsInfo, state.searchValue),
                        titleRowActionButtonText: tr('general_add_group'),
                        isTitleRowActionButtonVisible: true,
                        emptyStateTitle: tr('action_create_new_group_title'),
                        emptyStateDescription: tr('action_create_new_group_description'),
                        emptyStateIcon: Icon(Icons.group_add),
                        titleRowTrailingAction: () {
                          if (Platform.isAndroid) {
                            AutoRouter.of(context).push(AddGroupPageAndroidRoute()).then((isRefreshNeeded) async {
                              // TODO use database listener instead of delay
                              await Future.delayed(const Duration(milliseconds: 250), () {
                                context.read<HomepageBloc>().add(HomepageEvent.groupsRefreshed());
                              });
                            });
                          } else if (Platform.isIOS) {
                            showMaterialModalBottomSheet(
                              context: context,
                              useRootNavigator: true,
                              builder: (context) => AddGroupPageIOS(),
                            ).then((isRefreshNeeded) async {
                              // TODO use database listener instead of delay
                              await Future.delayed(const Duration(milliseconds: 250), () {
                                context.read<HomepageBloc>().add(HomepageEvent.groupsRefreshed());
                              });
                            });
                            ;
                          }
                        },
                        openPageForPressedCell: (String id, String groupTitle) {
                          pushNewScreen(
                            context,
                            screen: GroupOverviewPage(title: groupTitle, groupId: id),
                            withNavBar: true,
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
