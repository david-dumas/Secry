import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: Divider(thickness: 2.0, height: 36)),
      ),
      Text(tr('account_or_divider'), style: TextStyle(fontSize: 18.0)),
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Divider(thickness: 2.0, height: 36)),
      ),
    ]);
  }
}
