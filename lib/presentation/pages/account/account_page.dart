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
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Image(
            image: AssetImage('assets/launcher/foreground.png'),
          ),
        ),
      ),
    );
  }
}
