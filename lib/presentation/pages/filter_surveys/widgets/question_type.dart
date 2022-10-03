import 'package:flutter/material.dart';

import '../../../../constants.dart';

class QuestionType extends StatefulWidget {
  final String title;
  final String subtitle;

  const QuestionType({Key? key, required this.title, required this.subtitle}) : super(key: key);

  @override
  State<QuestionType> createState() => _FilterSurveyQuestionState();
}

class _FilterSurveyQuestionState extends State<QuestionType> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title, style: TextStyle(fontSize: fontSizeMedium)),
            SizedBox(height: marginXs),
            Text(widget.subtitle)
          ],
        ),
        Spacer(),
        Transform.translate(
          offset: const Offset(10, 0),
          child: Transform.scale(
            scale: 1.4,
            child: Checkbox(
                value: _isChecked,
                splashRadius: 0,
                side: BorderSide(
                    width: 0.5
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)
                ),
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value!;
                  });
                }
            ),
          ),
        )
      ],
    );
  }
}