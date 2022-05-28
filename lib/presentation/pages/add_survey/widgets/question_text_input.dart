import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:secry/domain/surveys/model/question.dart';

import '../../../../constants.dart';

class QuestionTextInput extends StatefulWidget {
  final Question question;
  final GlobalKey<FormState> _formKey;

  final int maximumQuestionLength;
  final Function(String newValue) questionTextUpdated;

  QuestionTextInput(
      {Key? key,
      required this.question,
      required GlobalKey<FormState> formKey,
      required this.maximumQuestionLength,
      required this.questionTextUpdated})
      : _formKey = formKey,
        super(key: key);

  @override
  State<QuestionTextInput> createState() => _QuestionTextInputState();
}

class _QuestionTextInputState extends State<QuestionTextInput> {
  final focusNode = FocusNode();

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((Duration _) {
      FocusScope.of(context).requestFocus(focusNode);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: TextFormField(
        key: Key(widget.question.id),
        initialValue: widget.question.text,
        focusNode: focusNode,
        autofocus: false,
        autocorrect: false,
        keyboardType: TextInputType.multiline,
        scrollPadding: EdgeInsets.only(bottom: 175),
        maxLines: 5,
        minLines: 1,
        decoration: InputDecoration(
          fillColor: globalWhite,
          filled: true,
          suffixText: "${max(0, widget.maximumQuestionLength - widget.question.text.length)}",
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
          LengthLimitingTextInputFormatter(widget.maximumQuestionLength),
        ],
        validator: (String? value) {
          if (value == null) {
            return null;
          }
          if (value.isEmpty) {
            return tr('warning_field_is_empty');
          } else if (value.length > widget.maximumQuestionLength) {
            return tr('warning_too_many_characters');
          }
          return null;
        },
        onChanged: (newValue) {
          widget.questionTextUpdated(newValue);
        },
      ),
    );
  }
}
