import 'package:auto_route/annotations.dart';
import 'package:secry/presentation/pages/account/account_overview_page.dart';
import 'package:secry/presentation/pages/account/account_go_to_login_or_signup_page.dart';
import 'package:secry/presentation/pages/account/reset_password_page.dart';
import 'package:secry/presentation/pages/add_chat/add_chat_page.dart';
import 'package:secry/presentation/pages/home/chat_page.dart';
import 'package:secry/presentation/pages/home/group_overview_page.dart';
import 'package:secry/presentation/pages/home/homepage.dart';
import 'package:secry/presentation/pages/account/login_page.dart';
import 'package:secry/presentation/pages/saved_chats_and_surveys/saved_chats_and_surveys_page.dart';
import 'package:secry/presentation/pages/search/global_search_page.dart';
import 'package:secry/presentation/pages/splash/splash_page.dart';
import 'package:secry/presentation/pages/tabbar/tabbar_page.dart';
import 'package:secry/presentation/pages/account/signup_page.dart';
import 'package:secry/presentation/pages/add_group/add_group_page.dart';
import 'package:secry/presentation/pages/add_survey/add_survey_page.dart';
import 'package:secry/presentation/pages/filter_surveys/filter_surveys_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: TabbarPage),
  MaterialRoute(page: HomePage),
  MaterialRoute(page: GlobalSearchPage),
  MaterialRoute(page: SavedChatsAndSurveysPage),
  MaterialRoute(page: AccountGoToLoginOrSignUpPage),
  MaterialRoute(page: AccountOverviewPage),
  MaterialRoute(page: LoginPage),
  MaterialRoute(page: SignupPage),
  MaterialRoute(page: ResetPasswordPage),
  MaterialRoute(page: GroupOverviewPage),
  MaterialRoute(page: ChatPage),
  MaterialRoute(page: AddGroupPageAndroid),
  MaterialRoute(page: AddSurveyPageAndroid),
  MaterialRoute(page: AddChatPageAndroid),
  MaterialRoute(page: FilterSurveysPage)
])
class $AppRouter {}
