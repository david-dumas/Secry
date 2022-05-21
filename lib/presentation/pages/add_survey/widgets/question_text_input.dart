import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secry/domain/surveys/model/question.dart';

import '../../../../constants.dart';

class QuestionTextInput extends StatelessWidget {
  final Question question;
  final GlobalKey<FormState> _formKey;

  final int maximumQuestionLength;
  final Function(String newValue) questionTextUpdated;

  const QuestionTextInput(
      {Key? key,
      required this.question,
      required GlobalKey<FormState> formKey,
      required this.maximumQuestionLength,
      required this.questionTextUpdated})
      : _formKey = formKey,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        key: Key(question.id),
        initialValue: question.text,
        autofocus: false,
        autocorrect: false,
        keyboardType: TextInputType.multiline,
        maxLines: 5,
        minLines: 1,
        decoration: InputDecoration(
          fillColor: globalWhite,
          filled: true,
          suffixText: "${max(0, maximumQuestionLength - question.text.length)}",
          hintText: tr('survey_question_hint_text'),
          contentPadding: EdgeInsets.all(20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: kMediumGrayV2,
              width: 1.0,
            ),
          ),
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(maximumQuestionLength),
        ],
        validator: (String? value) {
          if (value == null) {
            return null;
          }
          if (value.isEmpty) {
            return tr('warning_field_is_empty');
          } else if (value.length > maximumQuestionLength) {
            return tr('warning_too_many_characters');
          }
          return null;
        },
        onChanged: (newValue) {
          questionTextUpdated(newValue);
        },
      ),
    );
  }
}
