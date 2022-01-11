import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:secry/application/tabbar/tabbar_bloc.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/pages/login/login_page.dart';
import 'package:secry/presentation/pages/signup/signup_page.dart';
import 'package:secry/presentation/routes/router.gr.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<TabbarBloc, TabbarState>(
      builder: (mainContext, mainState) {
        return Scaffold(
          appBar: GeneralAppbar(),
          body: Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.1),
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: pagePadding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        width: MediaQuery.of(context).size.width * 0.3,
                        image: AssetImage('assets/launcher/foreground.png'),
                      ),
                      Text(
                        tr('account_logged_out_overview_title'),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(height: 16),
                      Text(
                        tr('account_logged_out_overview_description'),
                        textAlign: TextAlign.center,
                        style: mainContentTextStyleMedium,
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60.0,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            pushNewScreen(
                              context,
                              screen: LoginPage(),
                              withNavBar: true,
                              pageTransitionAnimation: PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Text(tr('action_login')),
                        ),
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
