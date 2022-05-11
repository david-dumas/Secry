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
import 'package:secry/social_media_icons_icons.dart';

class AccountGoToLoginOrSignUpPage extends StatelessWidget {
  const AccountGoToLoginOrSignUpPage({Key? key}) : super(key: key);

  static const Icon facebookIcon =
      Icon(SocialMediaIcons.facebook, color: Colors.white);
  static const Icon twitterIcon =
      Icon(SocialMediaIcons.twitter, color: Colors.white);
  static const Icon googleIcon = Icon(SocialMediaIcons.google);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabbarBloc, TabbarState>(
      builder: (mainContext, mainState) {
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                      SizedBox(height: 16),
                      Text(
                        'How well do you really know those around you? Secry is about the real world! Create a group with people you know and ask them anything!',
                        textAlign: TextAlign.center,
                        style: mainContentTextStyleMedium,
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: kButtonHeightMedium,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(kButtonRadiusMedium)),
                              ),
                            ),
                          ),
                          onPressed: () {
                            pushNewScreen(
                              context,
                              screen: SignupPage(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
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
                          Text('Already have an account?'),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              pushNewScreenWithRouteSettings(
                                context,
                                settings:
                                    RouteSettings(name: LoginPageRoute.name),
                                screen: LoginPage(),
                                withNavBar: true,
                                pageTransitionAnimation:
                                    PageTransitionAnimation.cupertino,
                              );
                            },
                            child: Text(tr('action_login')),
                          )
                        ],
                      ),
                      orDivider(),
                      Column(
                        children: [
                          continueWithSocialMediaButton(
                              context,
                              googleIcon,
                              Colors.white,
                              'Continue with Google',
                              Colors.grey),
                          continueWithSocialMediaButton(
                              context,
                              twitterIcon,
                              Colors.blue,
                              'Continue with Twitter',
                              Colors.white),
                          continueWithSocialMediaButton(
                              context,
                              facebookIcon,
                              Color.fromRGBO(63, 95, 175, 1),
                              'Continue with Facebook',
                              Colors.white),
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
    );
  }
}

Widget orDivider() {
  return Row(children: <Widget>[
    Expanded(
      child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 20.0),
          child: Divider(thickness: 2.0, height: 36)),
    ),
    Text("OR", style: TextStyle(fontSize: 18.0)),
    Expanded(
      child: new Container(
          margin: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: Divider(thickness: 2.0, height: 36)),
    ),
  ]);
}

Widget continueWithSocialMediaButton(
  BuildContext context,
  Icon socialMediaIcon,
  Color buttonColor,
  String continueWithText,
  Color textColor,
) {
  return Container(
    margin: EdgeInsets.only(bottom: 10.0),
    width: MediaQuery.of(context).size.width,
    height: kButtonHeightMedium,
    child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(kButtonRadiusMedium)),
            ),
          ),
        ),
        child: Row(
          children: [
            socialMediaIcon,
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                continueWithText,
                style: TextStyle(color: textColor, fontSize: 16.0),
              ),
            )
          ],
        )),
  );
}
