// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../pages/account/account_loggedout_page.dart' as _i7;
import '../pages/account/account_page.dart' as _i6;
import '../pages/home/homepage.dart' as _i3;
import '../pages/saved_chats_and_surveys/saved_chats_and_surveys_page.dart'
    as _i5;
import '../pages/search/global_search_page.dart' as _i4;
import '../pages/splash/splash_page.dart' as _i1;
import '../pages/tabbar/tabbar_page.dart' as _i2;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    TabbarPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TabbarPage());
    },
    HomePageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    GlobalSearchPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.GlobalSearchPage());
    },
    SavedChatsAndSurveysPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SavedChatsAndSurveysPage());
    },
    AccountPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AccountPage());
    },
    AccountLoggedoutPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AccountLoggedoutPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashPageRoute.name, path: '/'),
        _i8.RouteConfig(TabbarPageRoute.name, path: '/tabbar-page'),
        _i8.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i8.RouteConfig(GlobalSearchPageRoute.name,
            path: '/global-search-page'),
        _i8.RouteConfig(SavedChatsAndSurveysPageRoute.name,
            path: '/saved-chats-and-surveys-page'),
        _i8.RouteConfig(AccountPageRoute.name, path: '/account-page'),
        _i8.RouteConfig(AccountLoggedoutPageRoute.name,
            path: '/account-loggedout-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i8.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.TabbarPage]
class TabbarPageRoute extends _i8.PageRouteInfo<void> {
  const TabbarPageRoute() : super(name, path: '/tabbar-page');

  static const String name = 'TabbarPageRoute';
}

/// generated route for [_i3.HomePage]
class HomePageRoute extends _i8.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i4.GlobalSearchPage]
class GlobalSearchPageRoute extends _i8.PageRouteInfo<void> {
  const GlobalSearchPageRoute() : super(name, path: '/global-search-page');

  static const String name = 'GlobalSearchPageRoute';
}

/// generated route for [_i5.SavedChatsAndSurveysPage]
class SavedChatsAndSurveysPageRoute extends _i8.PageRouteInfo<void> {
  const SavedChatsAndSurveysPageRoute()
      : super(name, path: '/saved-chats-and-surveys-page');

  static const String name = 'SavedChatsAndSurveysPageRoute';
}

/// generated route for [_i6.AccountPage]
class AccountPageRoute extends _i8.PageRouteInfo<void> {
  const AccountPageRoute() : super(name, path: '/account-page');

  static const String name = 'AccountPageRoute';
}

/// generated route for [_i7.AccountLoggedoutPage]
class AccountLoggedoutPageRoute extends _i8.PageRouteInfo<void> {
  const AccountLoggedoutPageRoute()
      : super(name, path: '/account-loggedout-page');

  static const String name = 'AccountLoggedoutPageRoute';
}
