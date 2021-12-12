import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: globalWhite,
  //     body: Center(
  //       child: Text(
  //         'How well do you really know those around you? Secry is about the real world! Create a group with people you know and ask them anything. Talk about issues, insecurities, sex, work, anthing you want to talk about. Become aware, help each other, connect and discover secrets!',
  //         textAlign: TextAlign.center,
  //       ),
  //     ),
  //     // body: Center(
  //     //   child: Container(
  //     //     padding: const EdgeInsets.all(80),
  //     //     child: Text(
  //     //       'How well do you really know those around you? Secry is about the real world! Create a group with people you know and ask them anything. Talk about issues, insecurities, sex, work, anthing you want to talk about. Become aware, help each other, connect and discover secrets!',
  //     //       textAlign: TextAlign.center,
  //     //       // overflow: TextOverflow.ellipsis,
  //     //       // style: const TextStyle(fontWeight: FontWeight.bold),
  //     //     ),

  //     //   ),
  //     // ),
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalWhite,
      body: Column(
        children: [
          TextButton(
            child: Text('Woolha.com'),
            onPressed: () {
              print('Pressed');
            },
          )
        ],
      ),
    );
  }
}
