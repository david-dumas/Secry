import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';
import '../../../application/auth/account_go_to_login_or_signup_page/account_go_to_login_or_signup_page_bloc.dart';
import '../../../injection.dart';
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
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium)),
                            SizedBox(height: 100),
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
                                  socialMediaIcon: Image.asset('assets/fonts/apple_icon.png'),
                                  buttonColor: SocialMediaButton.appleButtonColor,
                                  buttonText: tr('action_sign_up_with_apple'),
                                  textColor: Colors.white,
                                  buttonPressed: () {
                                    // Todo add bloc event
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
