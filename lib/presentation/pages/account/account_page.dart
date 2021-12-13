import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalWhite,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 32),
              child: Text(
                'Join the community!',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 32, right: 32),
              //margin: EdgeInsets.only(bottom: 32),
              child: Text(
                'How well do you really know those around you? Secry is about the real world! Create a group with people you know and ask them anything. Talk about issues, insecurities, sex, work, anthing you want to talk about. Become aware, help each other, connect and discover secrets!',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
