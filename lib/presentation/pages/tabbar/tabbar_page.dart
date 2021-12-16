import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';

import 'package:secry/presentation/pages/account/account_page.dart';
import 'package:secry/presentation/pages/home/homepage.dart';
import 'package:secry/presentation/pages/saved_chats_and_surveys/saved_chats_and_surveys_page.dart';
import 'package:secry/presentation/pages/search/global_search_page.dart';

import 'package:secry/injection.dart';
import 'package:secry/constants.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({Key? key}) : super(key: key);

  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, length: 4, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<TabbarBloc>()..add(const TabbarEvent.initialized()),
      child: BlocConsumer<TabbarBloc, TabbarState>(listener: (context, state) {
        tabController?.animateTo(state.selectedIndex,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut);
      }, builder: (context, state) {
        return Scaffold(
          backgroundColor: globalWhite,
          appBar: AppBar(
            title: Text(
              state.currentTitleForSelectedIndex,
              style: TextStyle(color: kDarkGrayTextColor),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: tabController,
            children: [
              HomePage(),
              GlobalSearchPage(),
              SavedChatsAndSurveysPage(),
              AccountPage()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_outline), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: ""),
            ],
            currentIndex: state.selectedIndex,
            backgroundColor: Colors.grey[300],
            unselectedItemColor: Colors.grey[500],
            selectedItemColor: Theme.of(context).primaryColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) => context
                .read<TabbarBloc>()
                .add(TabbarEvent.selectedIndexChanged(index)),
          ),
        );
      }),
    );
  }
}
