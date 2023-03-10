// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

import '../pages/account/account_go_to_login_or_signup_page.dart' as _i6;
import '../pages/account/account_overview_page.dart' as _i7;
import '../pages/account/login_page.dart' as _i8;
import '../pages/account/reset_password_page.dart' as _i10;
import '../pages/account/signup_page.dart' as _i9;
import '../pages/add_chat/add_chat_page.dart' as _i15;
import '../pages/add_group/add_group_page.dart' as _i13;
import '../pages/add_survey/add_survey_page.dart' as _i14;
import '../pages/filter_surveys/filter_surveys_page.dart' as _i16;
import '../pages/home/chat_page.dart' as _i12;
import '../pages/home/group_overview_page.dart' as _i11;
import '../pages/home/homepage.dart' as _i3;
import '../pages/saved_chats_and_surveys/saved_chats_and_surveys_page.dart'
    as _i5;
import '../pages/search/global_search_page.dart' as _i4;
import '../pages/splash/splash_page.dart' as _i1;
import '../pages/tabbar/tabbar_page.dart' as _i2;

class AppRouter extends _i17.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    TabbarPageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.TabbarPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    GlobalSearchPageRoute.name: (routeData) {
      final args = routeData.argsAs<GlobalSearchPageRouteArgs>(
          orElse: () => const GlobalSearchPageRouteArgs());
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.GlobalSearchPage(key: args.key),
      );
    },
    SavedChatsAndSurveysPageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SavedChatsAndSurveysPage(),
      );
    },
    AccountGoToLoginOrSignUpPageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.AccountGoToLoginOrSignUpPage(),
      );
    },
    AccountOverviewPageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.AccountOverviewPage(),
      );
    },
    LoginPageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.LoginPage(),
      );
    },
    SignupPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignupPageRouteArgs>(
          orElse: () => const SignupPageRouteArgs());
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.SignupPage(key: args.key),
      );
    },
    ResetPasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordPageRouteArgs>(
          orElse: () => const ResetPasswordPageRouteArgs());
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.ResetPasswordPage(key: args.key),
      );
    },
    GroupOverviewPageRoute.name: (routeData) {
      final args = routeData.argsAs<GroupOverviewPageRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.GroupOverviewPage(
          key: args.key,
          title: args.title,
          groupId: args.groupId,
        ),
      );
    },
    ChatPageRoute.name: (routeData) {
      final args = routeData.argsAs<ChatPageRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.ChatPage(
          key: args.key,
          title: args.title,
          chatId: args.chatId,
        ),
      );
    },
    AddGroupPageAndroidRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.AddGroupPageAndroid(),
      );
    },
    AddSurveyPageAndroidRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.AddSurveyPageAndroid(),
      );
    },
    AddChatPageAndroidRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.AddChatPageAndroid(),
      );
    },
    FilterSurveysPageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.FilterSurveysPage(),
      );
    },
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(
          SplashPageRoute.name,
          path: '/',
        ),
        _i17.RouteConfig(
          TabbarPageRoute.name,
          path: '/tabbar-page',
        ),
        _i17.RouteConfig(
          HomePageRoute.name,
          path: '/home-page',
        ),
        _i17.RouteConfig(
          GlobalSearchPageRoute.name,
          path: '/global-search-page',
        ),
        _i17.RouteConfig(
          SavedChatsAndSurveysPageRoute.name,
          path: '/saved-chats-and-surveys-page',
        ),
        _i17.RouteConfig(
          AccountGoToLoginOrSignUpPageRoute.name,
          path: '/account-go-to-login-or-sign-up-page',
        ),
        _i17.RouteConfig(
          AccountOverviewPageRoute.name,
          path: '/account-overview-page',
        ),
        _i17.RouteConfig(
          LoginPageRoute.name,
          path: '/login-page',
        ),
        _i17.RouteConfig(
          SignupPageRoute.name,
          path: '/signup-page',
        ),
        _i17.RouteConfig(
          ResetPasswordPageRoute.name,
          path: '/reset-password-page',
        ),
        _i17.RouteConfig(
          GroupOverviewPageRoute.name,
          path: '/group-overview-page',
        ),
        _i17.RouteConfig(
          ChatPageRoute.name,
          path: '/chat-page',
        ),
        _i17.RouteConfig(
          AddGroupPageAndroidRoute.name,
          path: '/add-group-page-android',
        ),
        _i17.RouteConfig(
          AddSurveyPageAndroidRoute.name,
          path: '/add-survey-page-android',
        ),
        _i17.RouteConfig(
          AddChatPageAndroidRoute.name,
          path: '/add-chat-page-android',
        ),
        _i17.RouteConfig(
          FilterSurveysPageRoute.name,
          path: '/filter-surveys-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i17.PageRouteInfo<void> {
  const SplashPageRoute()
      : super(
          SplashPageRoute.name,
          path: '/',
        );

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.TabbarPage]
class TabbarPageRoute extends _i17.PageRouteInfo<void> {
  const TabbarPageRoute()
      : super(
          TabbarPageRoute.name,
          path: '/tabbar-page',
        );

  static const String name = 'TabbarPageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i17.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.GlobalSearchPage]
class GlobalSearchPageRoute
    extends _i17.PageRouteInfo<GlobalSearchPageRouteArgs> {
  GlobalSearchPageRoute({_i18.Key? key})
      : super(
          GlobalSearchPageRoute.name,
          path: '/global-search-page',
          args: GlobalSearchPageRouteArgs(key: key),
        );

  static const String name = 'GlobalSearchPageRoute';
}

class GlobalSearchPageRouteArgs {
  const GlobalSearchPageRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'GlobalSearchPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.SavedChatsAndSurveysPage]
class SavedChatsAndSurveysPageRoute extends _i17.PageRouteInfo<void> {
  const SavedChatsAndSurveysPageRoute()
      : super(
          SavedChatsAndSurveysPageRoute.name,
          path: '/saved-chats-and-surveys-page',
        );

  static const String name = 'SavedChatsAndSurveysPageRoute';
}

/// generated route for
/// [_i6.AccountGoToLoginOrSignUpPage]
class AccountGoToLoginOrSignUpPageRoute extends _i17.PageRouteInfo<void> {
  const AccountGoToLoginOrSignUpPageRoute()
      : super(
          AccountGoToLoginOrSignUpPageRoute.name,
          path: '/account-go-to-login-or-sign-up-page',
        );

  static const String name = 'AccountGoToLoginOrSignUpPageRoute';
}

/// generated route for
/// [_i7.AccountOverviewPage]
class AccountOverviewPageRoute extends _i17.PageRouteInfo<void> {
  const AccountOverviewPageRoute()
      : super(
          AccountOverviewPageRoute.name,
          path: '/account-overview-page',
        );

  static const String name = 'AccountOverviewPageRoute';
}

/// generated route for
/// [_i8.LoginPage]
class LoginPageRoute extends _i17.PageRouteInfo<void> {
  const LoginPageRoute()
      : super(
          LoginPageRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i9.SignupPage]
class SignupPageRoute extends _i17.PageRouteInfo<SignupPageRouteArgs> {
  SignupPageRoute({_i18.Key? key})
      : super(
          SignupPageRoute.name,
          path: '/signup-page',
          args: SignupPageRouteArgs(key: key),
        );

  static const String name = 'SignupPageRoute';
}

class SignupPageRouteArgs {
  const SignupPageRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'SignupPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.ResetPasswordPage]
class ResetPasswordPageRoute
    extends _i17.PageRouteInfo<ResetPasswordPageRouteArgs> {
  ResetPasswordPageRoute({_i18.Key? key})
      : super(
          ResetPasswordPageRoute.name,
          path: '/reset-password-page',
          args: ResetPasswordPageRouteArgs(key: key),
        );

  static const String name = 'ResetPasswordPageRoute';
}

class ResetPasswordPageRouteArgs {
  const ResetPasswordPageRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'ResetPasswordPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.GroupOverviewPage]
class GroupOverviewPageRoute
    extends _i17.PageRouteInfo<GroupOverviewPageRouteArgs> {
  GroupOverviewPageRoute({
    _i18.Key? key,
    required String title,
    required String groupId,
  }) : super(
          GroupOverviewPageRoute.name,
          path: '/group-overview-page',
          args: GroupOverviewPageRouteArgs(
            key: key,
            title: title,
            groupId: groupId,
          ),
        );

  static const String name = 'GroupOverviewPageRoute';
}

class GroupOverviewPageRouteArgs {
  const GroupOverviewPageRouteArgs({
    this.key,
    required this.title,
    required this.groupId,
  });

  final _i18.Key? key;

  final String title;

  final String groupId;

  @override
  String toString() {
    return 'GroupOverviewPageRouteArgs{key: $key, title: $title, groupId: $groupId}';
  }
}

/// generated route for
/// [_i12.ChatPage]
class ChatPageRoute extends _i17.PageRouteInfo<ChatPageRouteArgs> {
  ChatPageRoute({
    _i18.Key? key,
    required String title,
    required String chatId,
  }) : super(
          ChatPageRoute.name,
          path: '/chat-page',
          args: ChatPageRouteArgs(
            key: key,
            title: title,
            chatId: chatId,
          ),
        );

  static const String name = 'ChatPageRoute';
}

class ChatPageRouteArgs {
  const ChatPageRouteArgs({
    this.key,
    required this.title,
    required this.chatId,
  });

  final _i18.Key? key;

  final String title;

  final String chatId;

  @override
  String toString() {
    return 'ChatPageRouteArgs{key: $key, title: $title, chatId: $chatId}';
  }
}

/// generated route for
/// [_i13.AddGroupPageAndroid]
class AddGroupPageAndroidRoute extends _i17.PageRouteInfo<void> {
  const AddGroupPageAndroidRoute()
      : super(
          AddGroupPageAndroidRoute.name,
          path: '/add-group-page-android',
        );

  static const String name = 'AddGroupPageAndroidRoute';
}

/// generated route for
/// [_i14.AddSurveyPageAndroid]
class AddSurveyPageAndroidRoute extends _i17.PageRouteInfo<void> {
  const AddSurveyPageAndroidRoute()
      : super(
          AddSurveyPageAndroidRoute.name,
          path: '/add-survey-page-android',
        );

  static const String name = 'AddSurveyPageAndroidRoute';
}

/// generated route for
/// [_i15.AddChatPageAndroid]
class AddChatPageAndroidRoute extends _i17.PageRouteInfo<void> {
  const AddChatPageAndroidRoute()
      : super(
          AddChatPageAndroidRoute.name,
          path: '/add-chat-page-android',
        );

  static const String name = 'AddChatPageAndroidRoute';
}

/// generated route for
/// [_i16.FilterSurveysPage]
class FilterSurveysPageRoute extends _i17.PageRouteInfo<void> {
  const FilterSurveysPageRoute()
      : super(
          FilterSurveysPageRoute.name,
          path: '/filter-surveys-page',
        );

  static const String name = 'FilterSurveysPageRoute';
}
