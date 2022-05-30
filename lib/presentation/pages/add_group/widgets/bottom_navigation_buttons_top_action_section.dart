import 'package:flutter/material.dart';

import '../../../../constants.dart';

class BottomNavigationButtonsTopActionSection extends StatelessWidget {
  final String topActionButtonText;
  final double buttonHeight;
  final double bottomMargin;
  final Function()? actionButtonPressed;

  const BottomNavigationButtonsTopActionSection(
      {Key? key,
      required this.topActionButtonText,
      required this.buttonHeight,
      required this.bottomMargin,
      required this.actionButtonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: buttonHeight,
          width: MediaQuery.of(context).size.width,
          child: OutlinedButton(
            child: Text(
              topActionButtonText,
              style: TextStyle(fontSize: 16, color: kPrimaryColor),
            ),
            style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kButtonRadiusXxs),
                ),
                side: BorderSide(
                  width: 1.0,
                  color: kPrimaryColor,
                ),
                backgroundColor: globalWhite),
            onPressed: () {
              if (actionButtonPressed != null) {
                actionButtonPressed!();
              }
            },
          ),
        ),
        Container(
          height: bottomMargin,
        ),
      ],
    );
  }
}
