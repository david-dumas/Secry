import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:secry/constants.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalWhite,
      body: Center(
        child: Padding(
          padding: pagePadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                tr('action_create_account'),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: kPrimaryColor),
              ),
              SizedBox(height: 16),
              Text(
                tr('page_register_password_condition'),
                textAlign: TextAlign.center,
                style: buttonTextStyleMedium,
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
                    tr('action_register'),
                    style: buttonTextStyleMedium,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      tr('By tapping register, you agree to our'),
                      textAlign: TextAlign.center,
                      style: mainContentTextStyleMedium,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        tr('account_terms_of_use'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      tr('and'),
                      style: mainContentTextStyleMedium,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        tr('account_privacy_policy'),
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
