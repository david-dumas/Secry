import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DeleteQuestionButton extends StatelessWidget {
  const DeleteQuestionButton({
    Key? key,
    required this.questionIndex,
    required this.questionDeleted,
  }) : super(key: key);

  final int questionIndex;
  final Function questionDeleted;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          tr('action_delete_question'),
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
        onPressed: () {
          if (questionIndex > 0) {
            questionDeleted();
          }
        });
  }
}
