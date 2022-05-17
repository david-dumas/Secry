import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../constants.dart';

class QuestionTextInput extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final TextEditingController _questionEditingController;

  final int maximumQuestionLength;
  final Function(String newValue) questionTextUpdated;

  const QuestionTextInput(
      {Key? key,
      required GlobalKey<FormState> formKey,
      required TextEditingController questionEditingController,
      required this.maximumQuestionLength,
      required this.questionTextUpdated})
      : _formKey = formKey,
        _questionEditingController = questionEditingController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _questionEditingController,
        autofocus: false,
        autocorrect: false,
        keyboardType: TextInputType.multiline,
        maxLines: 5,
        minLines: 1,
        decoration: InputDecoration(
          fillColor: globalWhite,
          filled: true,
          suffixText: "${max(0, maximumQuestionLength - _questionEditingController.text.length)}",
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
