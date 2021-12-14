import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:secry/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    const pagePadding = EdgeInsets.only(left: 75, right: 75, bottom: 32);

    return Scaffold(
      backgroundColor: globalWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 32),
              child: Text(
                tr('account_login_title'),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: kPrimaryColor),
              ),
            ),
            Container(
              padding: pagePadding,
              child: Text(
                tr('account_forgot_your_password'),
                textAlign: TextAlign.center,
                style: mainContentTextStyleMedium,
              ),
            ),
            Container(
              padding: pagePadding,
              width: MediaQuery.of(context).size.width * 0.6,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  tr('action_login'),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
