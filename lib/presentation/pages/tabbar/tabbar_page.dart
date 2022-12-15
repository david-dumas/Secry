import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/presentation/pages/account/account_overview_page.dart';
import 'package:secry/presentation/pages/home/homepage.dart';
import 'package:secry/presentation/pages/saved_chats_and_surveys/saved_chats_and_surveys_page.dart';
import 'package:secry/presentation/pages/search/global_search_page.dart';
import 'package:secry/presentation/pages/account/account_go_to_login_or_signup_page.dart';

import 'package:secry/injection.dart';
import 'package:secry/constants.dart';
import 'package:theme_provider/theme_provider.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({Key? key}) : super(key: key);

  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> with SingleTickerProviderStateMixin {
  late PersistentTabController _persistentTabController;
  final accountPageKey = new GlobalKey();

  @override
  void initState() {
    _persistentTabController = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TabbarBloc>()..add(const TabbarEvent.initialized()),
      child: BlocConsumer<TabbarBloc, TabbarState>(listener: (context, state) {
        if (_persistentTabController.index != state.selectedIndex) {
          if (state.selectedIndex != 3 && accountPageKey.currentContext != null) {
            if (Navigator.of(accountPageKey.currentContext!).canPop()) {
              Navigator.of(accountPageKey.currentContext!).pop();
            }
          }

          _persistentTabController.index = state.selectedIndex;
        }
      }, builder: (context, state) {
        return Scaffold(
          backgroundColor: globalWhite,
          body: PersistentTabView(
            context,
            controller: _persistentTabController,
            screens: [HomePage(), GlobalSearchPage(), SavedChatsAndSurveysPage(), AccountOverviewPage()],
            items: [
              getBottomNavbarItem(icon: Icon(Icons.home_outlined)),
              getBottomNavbarItem(icon: Icon(Icons.search)),
              getBottomNavbarItem(icon: Icon(Icons.bookmark_outline)),
              getBottomNavbarItem(icon: Icon(Icons.account_circle_outlined)),
            ],
            confineInSafeArea: true,
            //backgroundColor: ThemeProvider.themeOf(context).data.backgroundColor,
            backgroundColor: globalWhite,
            handleAndroidBackButtonPress: true,
            onItemSelected: (newIndex) {
              context.read<TabbarBloc>().add(TabbarEvent.selectedIndexChanged(newIndex));
            },
            resizeToAvoidBottomInset: false,
            stateManagement: true,
            navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0 ? 0.0 : kBottomNavigationBarHeight,
            hideNavigationBarWhenKeyboardShows: true,
            margin: EdgeInsets.all(0.0),
            popActionScreens: PopActionScreensType.all,
            bottomScreenMargin: 0.0,
            navBarStyle: NavBarStyle.style6,
          ),
        );
      }),
    );
  }

  PersistentBottomNavBarItem getBottomNavbarItem({required Icon icon}) {
    return PersistentBottomNavBarItem(
      icon: icon,
      activeColorPrimary: kPrimaryColor,
      inactiveColorPrimary: kMediumGray,
    );
  }
}
