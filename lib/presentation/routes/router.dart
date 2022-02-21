import 'package:auto_route/annotations.dart';
import 'package:secry/presentation/pages/account/account_page.dart';
import 'package:secry/presentation/pages/account/reset_password_page.dart';
import 'package:secry/presentation/pages/home/group_overview_page.dart';
import 'package:secry/presentation/pages/home/homepage.dart';
import 'package:secry/presentation/pages/login/login_page.dart';
import 'package:secry/presentation/pages/saved_chats_and_surveys/saved_chats_and_surveys_page.dart';
import 'package:secry/presentation/pages/search/global_search_page.dart';
import 'package:secry/presentation/pages/splash/splash_page.dart';
import 'package:secry/presentation/pages/tabbar/tabbar_page.dart';
import 'package:secry/presentation/pages/account/account_loggedout_page.dart';
import 'package:secry/presentation/pages/signup/signup_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: TabbarPage),
  MaterialRoute(page: HomePage),
  MaterialRoute(page: GlobalSearchPage),
  MaterialRoute(page: SavedChatsAndSurveysPage),
  MaterialRoute(page: AccountPage),
  MaterialRoute(page: AccountLoggedoutPage),
  MaterialRoute(page: LoginPage),
  MaterialRoute(page: SignupPage),
  MaterialRoute(page: ResetPasswordPage),
  MaterialRoute(page: GroupOverviewPage)
])
class $AppRouter {}
