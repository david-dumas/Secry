// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../pages/account/account_loggedout_page.dart' as _i7;
import '../pages/account/account_page.dart' as _i6;
import '../pages/account/reset_password_page.dart' as _i10;
import '../pages/home/chat_page.dart' as _i12;
import '../pages/home/group_overview_page.dart' as _i11;
import '../pages/home/homepage.dart' as _i3;
import '../pages/login/login_page.dart' as _i8;
import '../pages/saved_chats_and_surveys/saved_chats_and_surveys_page.dart'
    as _i5;
import '../pages/search/global_search_page.dart' as _i4;
import '../pages/signup/signup_page.dart' as _i9;
import '../pages/splash/splash_page.dart' as _i1;
import '../pages/tabbar/tabbar_page.dart' as _i2;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    TabbarPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TabbarPage());
    },
    HomePageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    GlobalSearchPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.GlobalSearchPage());
    },
    SavedChatsAndSurveysPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SavedChatsAndSurveysPage());
    },
    AccountPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AccountPage());
    },
    AccountLoggedoutPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AccountLoggedoutPage());
    },
    LoginPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LoginPage());
    },
    SignupPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignupPageRouteArgs>(
          orElse: () => const SignupPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.SignupPage(key: args.key));
    },
    ResetPasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordPageRouteArgs>(
          orElse: () => const ResetPasswordPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.ResetPasswordPage(key: args.key));
    },
    GroupOverviewPageRoute.name: (routeData) {
      final args = routeData.argsAs<GroupOverviewPageRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.GroupOverviewPage(
              key: args.key, title: args.title, groupId: args.groupId));
    },
    ChatPageRoute.name: (routeData) {
      final args = routeData.argsAs<ChatPageRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.ChatPage(
              key: args.key, title: args.title, chatId: args.chatId));
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(SplashPageRoute.name, path: '/'),
        _i13.RouteConfig(TabbarPageRoute.name, path: '/tabbar-page'),
        _i13.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i13.RouteConfig(GlobalSearchPageRoute.name,
            path: '/global-search-page'),
        _i13.RouteConfig(SavedChatsAndSurveysPageRoute.name,
            path: '/saved-chats-and-surveys-page'),
        _i13.RouteConfig(AccountPageRoute.name, path: '/account-page'),
        _i13.RouteConfig(AccountLoggedoutPageRoute.name,
            path: '/account-loggedout-page'),
        _i13.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i13.RouteConfig(SignupPageRoute.name, path: '/signup-page'),
        _i13.RouteConfig(ResetPasswordPageRoute.name,
            path: '/reset-password-page'),
        _i13.RouteConfig(GroupOverviewPageRoute.name,
            path: '/group-overview-page'),
        _i13.RouteConfig(ChatPageRoute.name, path: '/chat-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i13.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.TabbarPage]
class TabbarPageRoute extends _i13.PageRouteInfo<void> {
  const TabbarPageRoute() : super(TabbarPageRoute.name, path: '/tabbar-page');

  static const String name = 'TabbarPageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i13.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.GlobalSearchPage]
class GlobalSearchPageRoute extends _i13.PageRouteInfo<void> {
  const GlobalSearchPageRoute()
      : super(GlobalSearchPageRoute.name, path: '/global-search-page');

  static const String name = 'GlobalSearchPageRoute';
}

/// generated route for
/// [_i5.SavedChatsAndSurveysPage]
class SavedChatsAndSurveysPageRoute extends _i13.PageRouteInfo<void> {
  const SavedChatsAndSurveysPageRoute()
      : super(SavedChatsAndSurveysPageRoute.name,
            path: '/saved-chats-and-surveys-page');

  static const String name = 'SavedChatsAndSurveysPageRoute';
}

/// generated route for
/// [_i6.AccountPage]
class AccountPageRoute extends _i13.PageRouteInfo<void> {
  const AccountPageRoute()
      : super(AccountPageRoute.name, path: '/account-page');

  static const String name = 'AccountPageRoute';
}

/// generated route for
/// [_i7.AccountLoggedoutPage]
class AccountLoggedoutPageRoute extends _i13.PageRouteInfo<void> {
  const AccountLoggedoutPageRoute()
      : super(AccountLoggedoutPageRoute.name, path: '/account-loggedout-page');

  static const String name = 'AccountLoggedoutPageRoute';
}

/// generated route for
/// [_i8.LoginPage]
class LoginPageRoute extends _i13.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i9.SignupPage]
class SignupPageRoute extends _i13.PageRouteInfo<SignupPageRouteArgs> {
  SignupPageRoute({_i14.Key? key})
      : super(SignupPageRoute.name,
            path: '/signup-page', args: SignupPageRouteArgs(key: key));

  static const String name = 'SignupPageRoute';
}

class SignupPageRouteArgs {
  const SignupPageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'SignupPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.ResetPasswordPage]
class ResetPasswordPageRoute
    extends _i13.PageRouteInfo<ResetPasswordPageRouteArgs> {
  ResetPasswordPageRoute({_i14.Key? key})
      : super(ResetPasswordPageRoute.name,
            path: '/reset-password-page',
            args: ResetPasswordPageRouteArgs(key: key));

  static const String name = 'ResetPasswordPageRoute';
}

class ResetPasswordPageRouteArgs {
  const ResetPasswordPageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'ResetPasswordPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.GroupOverviewPage]
class GroupOverviewPageRoute
    extends _i13.PageRouteInfo<GroupOverviewPageRouteArgs> {
  GroupOverviewPageRoute(
      {_i14.Key? key, required String title, required String groupId})
      : super(GroupOverviewPageRoute.name,
            path: '/group-overview-page',
            args: GroupOverviewPageRouteArgs(
                key: key, title: title, groupId: groupId));

  static const String name = 'GroupOverviewPageRoute';
}

class GroupOverviewPageRouteArgs {
  const GroupOverviewPageRouteArgs(
      {this.key, required this.title, required this.groupId});

  final _i14.Key? key;

  final String title;

  final String groupId;

  @override
  String toString() {
    return 'GroupOverviewPageRouteArgs{key: $key, title: $title, groupId: $groupId}';
  }
}

/// generated route for
/// [_i12.ChatPage]
class ChatPageRoute extends _i13.PageRouteInfo<ChatPageRouteArgs> {
  ChatPageRoute({_i14.Key? key, required String title, required String chatId})
      : super(ChatPageRoute.name,
            path: '/chat-page',
            args: ChatPageRouteArgs(key: key, title: title, chatId: chatId));

  static const String name = 'ChatPageRoute';
}

class ChatPageRouteArgs {
  const ChatPageRouteArgs(
      {this.key, required this.title, required this.chatId});

  final _i14.Key? key;

  final String title;

  final String chatId;

  @override
  String toString() {
    return 'ChatPageRouteArgs{key: $key, title: $title, chatId: $chatId}';
  }
}
