import 'dart:io' show Platform;
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
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
  final ScrollController _scrollController = ScrollController();

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
                  backgroundColor: globalWhite
                ),
                body: RefreshIndicator(
                  onRefresh: () async {
                    context.read<HomepageBloc>().add(HomepageEvent.groupsRefreshed());
                  },
                  child: SingleChildScrollView(
                      controller: _scrollController
                        ..addListener(() {
                          if (_scrollController.offset == _scrollController.position.maxScrollExtent &&
                              !state.isFetchingMoreGroupsForScrollDown) {
                            context.read<HomepageBloc>().add(HomepageEvent.scrolledToLoadMoreItems());
                          }
                        }),
                      child: Column(
                        children: [
                          SearchBarForHomePage(
                              searchValue: state.searchValue,
                              searchValueChanged: (newValue) {
                                context.read<HomepageBloc>().add(HomepageEvent.searchValueUpdated(newValue));
                              }
                          ),
                          Padding(
                            padding: pagePaddingAllSides,
                            child: GroupSection(
                              title: tr('home_my_groups'),
                              totalAmountOfGroups: state.paginationInfo?.totalCount ?? 0,
                              cellInfoItems: SearchHelper()
                                  .getFilteredGeneralListCellItems(state.privateGroupsRowsInfo, state.searchValue),
                              titleRowActionButtonText: tr('general_add_group'),
                              isFetchingInitialGroups: state.isFetchingInitialGroups,
                              isDataFetched: state.isDataFetched,
                              isTitleRowActionButtonVisible: true,
                              emptyStateTitle: tr('action_create_new_group_title'),
                              emptyStateDescription: tr('action_create_new_group_description'),
                              emptyStateIcon: Icon(Icons.group_add),
                              bottomMargin: 50.0,
                              titleRowTrailingAction: () {
                                if (Platform.isAndroid) {
                                  AutoRouter.of(context).push(AddGroupPageAndroidRoute()).then((isRefreshNeeded) async {
                                    context.read<HomepageBloc>().add(HomepageEvent.groupsRefreshed());
                                  });
                                } else if (Platform.isIOS) {
                                  showMaterialModalBottomSheet(
                                    context: context,
                                    useRootNavigator: true,
                                    builder: (context) => AddGroupPageIOS(),
                                  ).then((isRefreshNeeded) async {
                                    context.read<HomepageBloc>().add(HomepageEvent.groupsRefreshed());
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
                        ],
                      )),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class SearchBarForHomePage extends StatefulWidget {
  final String searchValue;
  final Function(String) searchValueChanged;

  const SearchBarForHomePage({Key? key, required this.searchValue, required this.searchValueChanged}) : super(key: key);

  @override
  State<SearchBarForHomePage> createState() => _SearchBarForHomePageState();
}

class _SearchBarForHomePageState extends State<SearchBarForHomePage> {
  final TextEditingController searchBarTextEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchBarTextEditingController,
              autofocus: widget.searchValue == '',
              autocorrect: false,
              decoration: InputDecoration(
                fillColor: searchBarBackgroundColor,
                contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                filled: true,
                hintText: '${tr('action_search')}...',
                suffixIcon: IconButton(
                  color: kDarkGray,
                  onPressed: () {
                    searchBarTextEditingController.text = '';
                    widget.searchValueChanged('');
                  },
                  icon: Icon(
                    Icons.clear_rounded,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)
                ),
              ),
              onChanged: (newValue) {
                this.widget.searchValueChanged(newValue);
              },
            ),
      ),
    ));
  }
}
