import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/pages/general/widgets/search_people_section.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import 'package:secry/application/global_search/global_search_bloc.dart';

import 'package:secry/injection.dart';

class GlobalSearchPage extends StatefulWidget {
  GlobalSearchPage({Key? key}) : super(key: key);

  @override
  State<GlobalSearchPage> createState() => _GlobalSearchPageState();
}

class _GlobalSearchPageState extends State<GlobalSearchPage> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController searchBarSearchAllPeopleTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabbarBloc, TabbarState>(
      builder: (mainContext, mainState) {
        return BlocProvider(
          create: (context) => getIt<GlobalSearchBloc>()..add(const GlobalSearchEvent.initialized()),
          child: BlocBuilder<GlobalSearchBloc, GlobalSearchState>(
            builder: (context, state) {
              return Scaffold(
                appBar: GeneralAppbar(
                  title: tr(mainState.currentTitleTagForSelectedIndex),
                  backgroundColor: globalWhite,
                ),
                body: RefreshIndicator(
                  onRefresh: () async {
                    context.read<GlobalSearchBloc>().add(GlobalSearchEvent.pageRefreshed());
                  },
                  child: SingleChildScrollView(
                    controller: _scrollController
                      ..addListener(() {
                        if (_scrollController.offset == _scrollController.position.maxScrollExtent &&
                            !state.isFetchingMoreDataForScrollDown) {
                          context.read<GlobalSearchBloc>().add(GlobalSearchEvent.scrolledToLoadMoreItems());
                        }
                      }),
                    child: SearchPeopleSection(
                      searchValue: state.searchValue,
                      usersForSearchQuery: state.usersForSearchQuery,
                      isDataFetched: state.isDataFetched,
                      isFetchingData: state.isFetchingInitialData,
                      searchBarSearchAllPeopleTextEditingController: searchBarSearchAllPeopleTextEditingController,
                      searchBarCleared: () {
                        context.read<GlobalSearchBloc>().add(GlobalSearchEvent.searchValueUpdated(''));
                      },
                      searchValueUpdated: (newValue) {
                        context.read<GlobalSearchBloc>().add(GlobalSearchEvent.searchValueUpdated(newValue));
                      },
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
