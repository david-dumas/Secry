import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class BottomNavigationSection extends StatelessWidget {
  const BottomNavigationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 1, color: kLineSeparatorColor))),
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Container(
            width: MediaQuery.of(context).size.width - 20,
            height: 50.0,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusXs)),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                ),
                onPressed: () {},
                child: Text(
                  tr('filter_surveys_apply_button'),
                  style: TextStyle(fontSize: fontSizeMedium, fontWeight: FontWeight.normal, color: globalWhite),
                ),
            ),
          )
        )
      )
    );
  }
}
