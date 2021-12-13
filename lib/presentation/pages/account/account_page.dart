import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const pagePadding = EdgeInsets.only(left: 32, right: 32, bottom: 32);

    return Scaffold(
      backgroundColor: globalWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 32),
              child: Text(
                tr('account_logged_out_overview_title'),
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
            Container(
              padding: pagePadding,
              child: Text(
                tr('account_logged_out_overview_description'),
                textAlign: TextAlign.center,
                style: mainContentTextStyleMedium,
              ),
            ),
            Container(
              padding: pagePadding,
              width: MediaQuery.of(context).size.width * 0.6,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(tr('action_create_account')),
              ),
            ),
            Container(
              padding: pagePadding,
              width: MediaQuery.of(context).size.width * 0.6,
              child: TextButton(
                onPressed: () {},
                child: Text(tr('action_login')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
