import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class DialogHelper {
  showAlertDialog(BuildContext context,
      {required String title, required String description, AsyncCallback? extraActionOnClose}) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        Widget okButton = TextButton(
          child: Text(tr('action_ok')),
          onPressed: () async {
            Navigator.of(dialogContext).pop();
            if (extraActionOnClose != null) {
              extraActionOnClose();
            }
          },
        );

        AlertDialog alert = AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: [
            okButton,
          ],
        );

        return alert;
      },
    );
  }

  showSimpleDialogWithTip(BuildContext context,
      {required String title,
      required String description,
      required String tip,
      required String buttonText,
      required Function() onButtonPressed}) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext dialogContext) {
          return SimpleDialog(
            insetPadding: EdgeInsets.all(20),
            contentPadding: EdgeInsets.all(32),
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.privacy_tip_outlined,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: Text(
                      tip,
                      style: TextStyle(color: kPrimaryColor, fontSize: 18),
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: kButtonHeightMedium,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(kButtonRadiusMedium)),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(dialogContext).pop();
                    onButtonPressed();
                  },
                  child: Text(
                    buttonText,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          );
        });
  }
}
