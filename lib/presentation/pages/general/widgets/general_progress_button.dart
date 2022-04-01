import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class GeneralProgressButton extends StatelessWidget {
  final String title;
  final bool isLoading;
  final Function() onButtonPressed;

  const GeneralProgressButton({Key? key, required this.title, required this.isLoading, required this.onButtonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusMedium)),
          ),
        ),
      ),
      onPressed: () {
        onButtonPressed();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: isLoading
              ? SizedBox(width: 25, height: 25, child: CircularProgressIndicator(color: globalWhite))
              : Text(
                  title,
                  style: buttonTextStyleMedium,
                ),
        ),
      ),
    );
  }
}
