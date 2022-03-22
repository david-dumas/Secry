import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
}
