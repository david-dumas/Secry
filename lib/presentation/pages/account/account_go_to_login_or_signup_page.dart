import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/pages/account/login_page.dart';
import 'package:secry/presentation/pages/account/signup_page.dart';
import 'package:secry/presentation/routes/router.gr.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import '../../../application/auth/account_go_to_login_or_signup_page/account_go_to_login_or_signup_page_bloc.dart';
import '../../../injection.dart';
import 'widgets/or_divider.dart';
import 'widgets/social_media_buttons.dart';

class AccountGoToLoginOrSignUpPage extends StatelessWidget {
  const AccountGoToLoginOrSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabbarBloc, TabbarState>(
      builder: (mainContext, mainState) {
        return BlocProvider(
          create: (context) => getIt<AccountGoToLoginOrSignupPageBloc>(),
          child: BlocBuilder<AccountGoToLoginOrSignupPageBloc, AccountGoToLoginOrSignupPageState>(
            builder: (context, state) {
              return Scaffold(
                appBar: GeneralAppbar(),
                body: Padding(
                  padding: EdgeInsets.only(bottom: 50.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: pagePaddingZeroTop,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              width: MediaQuery.of(context).size.width * 0.3,
                              image: AssetImage('assets/launcher/foreground.png'),
                            ),
                            Text(tr('account_logged_out_overview_title'),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                            SizedBox(height: 16),
                            Text(
                              tr("account_logged_out_overview_description"),
                              textAlign: TextAlign.center,
                              style: mainContentTextStyleMedium,
                            ),
                            SizedBox(height: 16),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: kButtonHeightMedium,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusMedium)),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  pushNewScreen(
                                    context,
                                    screen: SignupPage(),
                                    withNavBar: true,
                                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                  );
                                },
                                child: Text(
                                  tr('action_create_account'),
                                  style: buttonTextStyleMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(tr('account_logged_out_question')),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    pushNewScreenWithRouteSettings(
                                      context,
                                      settings: RouteSettings(name: LoginPageRoute.name),
                                      screen: LoginPage(),
                                      withNavBar: true,
                                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                    );
                                  },
                                  child: Text(tr('action_login')),
                                )
                              ],
                            ),
                            OrDivider(),
                            Column(
                              children: [
                                SocialMediaButton(
                                  context,
                                  socialMediaIcon: Image.asset('assets/fonts/google_icon.png'),
                                  buttonColor: SocialMediaButton.googleButtonColor,
                                  buttonText: tr('account_sign_up_with_google'),
                                  textColor: Colors.black,
                                  buttonPressed: () {
                                    context
                                        .read<AccountGoToLoginOrSignupPageBloc>()
                                        .add(AccountGoToLoginOrSignupPageEvent.continueWithGooglePressed());
                                  },
                                ),
                                SocialMediaButton(
                                  context,
                                  socialMediaIcon: Image.asset('assets/fonts/twitter_icon.png'),
                                  buttonColor: SocialMediaButton.twitterButtonColor,
                                  buttonText: tr('account_sign_up_with_twitter'),
                                  textColor: Colors.white,
                                  buttonPressed: () {
                                    context
                                        .read<AccountGoToLoginOrSignupPageBloc>()
                                        .add(AccountGoToLoginOrSignupPageEvent.continueWithTwitterPressed());
                                  },
                                ),
                                SocialMediaButton(
                                  context,
                                  socialMediaIcon: Image.asset('assets/fonts/facebook_icon.png'),
                                  buttonColor: SocialMediaButton.facebookButtonColor,
                                  buttonText: tr('account_sign_up_with_facebook'),
                                  textColor: Colors.white,
                                  buttonPressed: () {
                                    context
                                        .read<AccountGoToLoginOrSignupPageBloc>()
                                        .add(AccountGoToLoginOrSignupPageEvent.continueWithFacebookPressed());
                                  },
                                ),
                              ],
                            ),
                            verticalSafetyScrollOffset
                          ],
                        ),
                      ),
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
