// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/cupertino.dart' as _i13;
import 'package:flutter/material.dart' as _i12;

import '../pages/account/account_loggedout_page.dart' as _i7;
import '../pages/account/account_page.dart' as _i6;
import '../pages/account/reset_password_page.dart' as _i10;
import '../pages/home/homepage.dart' as _i3;
import '../pages/login/login_page.dart' as _i8;
import '../pages/saved_chats_and_surveys/saved_chats_and_surveys_page.dart'
    as _i5;
import '../pages/search/global_search_page.dart' as _i4;
import '../pages/signup/signup_page.dart' as _i9;
import '../pages/splash/splash_page.dart' as _i1;
import '../pages/tabbar/tabbar_page.dart' as _i2;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    TabbarPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TabbarPage());
    },
    HomePageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    GlobalSearchPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.GlobalSearchPage());
    },
    SavedChatsAndSurveysPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SavedChatsAndSurveysPage());
    },
    AccountPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AccountPage());
    },
    AccountLoggedoutPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AccountLoggedoutPage());
    },
    LoginPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.LoginPage());
    },
    SignupPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignupPageRouteArgs>(
          orElse: () => const SignupPageRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.SignupPage(key: args.key));
    },
    ResetPasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordPageRouteArgs>(
          orElse: () => const ResetPasswordPageRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.ResetPasswordPage(key: args.key));
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashPageRoute.name, path: '/'),
        _i11.RouteConfig(TabbarPageRoute.name, path: '/tabbar-page'),
        _i11.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i11.RouteConfig(GlobalSearchPageRoute.name,
            path: '/global-search-page'),
        _i11.RouteConfig(SavedChatsAndSurveysPageRoute.name,
            path: '/saved-chats-and-surveys-page'),
        _i11.RouteConfig(AccountPageRoute.name, path: '/account-page'),
        _i11.RouteConfig(AccountLoggedoutPageRoute.name,
            path: '/account-loggedout-page'),
        _i11.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i11.RouteConfig(SignupPageRoute.name, path: '/signup-page'),
        _i11.RouteConfig(ResetPasswordPageRoute.name,
            path: '/reset-password-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i11.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.TabbarPage]
class TabbarPageRoute extends _i11.PageRouteInfo<void> {
  const TabbarPageRoute() : super(TabbarPageRoute.name, path: '/tabbar-page');

  static const String name = 'TabbarPageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i11.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.GlobalSearchPage]
class GlobalSearchPageRoute extends _i11.PageRouteInfo<void> {
  const GlobalSearchPageRoute()
      : super(GlobalSearchPageRoute.name, path: '/global-search-page');

  static const String name = 'GlobalSearchPageRoute';
}

/// generated route for
/// [_i5.SavedChatsAndSurveysPage]
class SavedChatsAndSurveysPageRoute extends _i11.PageRouteInfo<void> {
  const SavedChatsAndSurveysPageRoute()
      : super(SavedChatsAndSurveysPageRoute.name,
            path: '/saved-chats-and-surveys-page');

  static const String name = 'SavedChatsAndSurveysPageRoute';
}

/// generated route for
/// [_i6.AccountPage]
class AccountPageRoute extends _i11.PageRouteInfo<void> {
  const AccountPageRoute()
      : super(AccountPageRoute.name, path: '/account-page');

  static const String name = 'AccountPageRoute';
}

/// generated route for
/// [_i7.AccountLoggedoutPage]
class AccountLoggedoutPageRoute extends _i11.PageRouteInfo<void> {
  const AccountLoggedoutPageRoute()
      : super(AccountLoggedoutPageRoute.name, path: '/account-loggedout-page');

  static const String name = 'AccountLoggedoutPageRoute';
}

/// generated route for
/// [_i8.LoginPage]
class LoginPageRoute extends _i11.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i9.SignupPage]
class SignupPageRoute extends _i11.PageRouteInfo<SignupPageRouteArgs> {
  SignupPageRoute({_i13.Key? key})
      : super(SignupPageRoute.name,
            path: '/signup-page', args: SignupPageRouteArgs(key: key));

  static const String name = 'SignupPageRoute';
}

class SignupPageRouteArgs {
  const SignupPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SignupPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.ResetPasswordPage]
class ResetPasswordPageRoute
    extends _i11.PageRouteInfo<ResetPasswordPageRouteArgs> {
  ResetPasswordPageRoute({_i13.Key? key})
      : super(ResetPasswordPageRoute.name,
            path: '/reset-password-page',
            args: ResetPasswordPageRouteArgs(key: key));

  static const String name = 'ResetPasswordPageRoute';
}

class ResetPasswordPageRouteArgs {
  const ResetPasswordPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'ResetPasswordPageRouteArgs{key: $key}';
  }
}
