// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../pages/account/account_page.dart' as _i5;
import '../pages/home/homepage.dart' as _i2;
import '../pages/saved_chats_and_surveys/saved_chats_and_surveys_page.dart'
    as _i4;
import '../pages/search/global_search_page.dart' as _i3;
import '../pages/tabbar/tabbar_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    TabbarPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TabbarPage());
    },
    HomePageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    GlobalSearchPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.GlobalSearchPage());
    },
    SavedChatsAndSurveysPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SavedChatsAndSurveysPage());
    },
    AccountPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.AccountPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(TabbarPageRoute.name, path: '/'),
        _i6.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i6.RouteConfig(GlobalSearchPageRoute.name,
            path: '/global-search-page'),
        _i6.RouteConfig(SavedChatsAndSurveysPageRoute.name,
            path: '/saved-chats-and-surveys-page'),
        _i6.RouteConfig(AccountPageRoute.name, path: '/account-page')
      ];
}

/// generated route for [_i1.TabbarPage]
class TabbarPageRoute extends _i6.PageRouteInfo<void> {
  const TabbarPageRoute() : super(name, path: '/');

  static const String name = 'TabbarPageRoute';
}

/// generated route for [_i2.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i3.GlobalSearchPage]
class GlobalSearchPageRoute extends _i6.PageRouteInfo<void> {
  const GlobalSearchPageRoute() : super(name, path: '/global-search-page');

  static const String name = 'GlobalSearchPageRoute';
}

/// generated route for [_i4.SavedChatsAndSurveysPage]
class SavedChatsAndSurveysPageRoute extends _i6.PageRouteInfo<void> {
  const SavedChatsAndSurveysPageRoute()
      : super(name, path: '/saved-chats-and-surveys-page');

  static const String name = 'SavedChatsAndSurveysPageRoute';
}

/// generated route for [_i5.AccountPage]
class AccountPageRoute extends _i6.PageRouteInfo<void> {
  const AccountPageRoute() : super(name, path: '/account-page');

  static const String name = 'AccountPageRoute';
}
