import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class SocialMediaButton extends StatelessWidget {
  final Widget socialMediaIcon;
  final Color buttonColor;
  final String buttonText;
  final Color textColor;

  SocialMediaButton(BuildContext context,
      {Key? key,
      required this.socialMediaIcon,
      required this.buttonColor,
      required this.buttonText,
      required this.textColor})
      : super(key: key);

  // Icons of the social media buttons
  final Image twitterIcon = Image.asset('assets/fonts/twitter_icon.png');
  final Image googleIcon = Image.asset('assets/fonts/google_icon.png');
  final Image facebookIcon = Image.asset('assets/fonts/facebook_icon.png');

  // Colors of the social media buttons
  static const Color twitterButtonColor = Color.fromRGBO(85, 172, 238, 1.0);
  static const Color googleButtonColor = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color facebookButtonColor = Color.fromRGBO(63, 95, 175, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      width: MediaQuery.of(context).size.width,
      height: kButtonHeightMedium,
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(kButtonRadiusMedium)),
            ),
          ),
        ),
        child: Row(
          children: [
            socialMediaIcon,
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                buttonText,
                style: TextStyle(color: textColor, fontSize: 16.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
