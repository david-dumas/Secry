import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';
import 'package:secry/presentation/routes/router.gr.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
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
                height: 44,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    tr('action_create_account'),
                    style: buttonTextStyleMedium,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 44,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    AutoRouter.of(context).push(const LoginPageRoute());
                  },
                  child: Text(tr('action_login')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
