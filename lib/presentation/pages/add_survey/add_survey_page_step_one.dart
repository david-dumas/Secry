import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:secry/constants.dart';
import 'package:secry/application/add_survey/add_survey_page_bloc.dart';

class AddSurveyPageStepOne extends StatefulWidget {
  final String surveyTitle;

  AddSurveyPageStepOne({Key? key, required this.surveyTitle}) : super(key: key);

  @override
  State<AddSurveyPageStepOne> createState() => _AddSurveyPageStepOneState();
}

class _AddSurveyPageStepOneState extends State<AddSurveyPageStepOne> {
  final TextEditingController _titleController = TextEditingController();
  final maximumTitleLength = 24; // TODO load from remote config

  @override
  void initState() {
    _titleController.text = widget.surveyTitle;
    super.initState();
  }

  @override
  Widget build(BuildContext mainContext) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          TextFormField(
            controller: _titleController,
            autofocus: false,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: tr('add_survey_title'),
              suffixText: "${max(0, maximumTitleLength - _titleController.text.length)}",
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: kMediumGrayV2,
                  width: 1.0,
                ),
              ),
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(maximumTitleLength),
            ],
            validator: (String? value) {
              if (value == null) {
                return null;
              }
              if (value.isEmpty) {
                return tr('warning_field_is_empty');
              } else if (value.length > maximumTitleLength) {
                return tr('warning_too_many_characters');
              }
              return null;
            },
            onChanged: (newValue) {
              mainContext.read<AddSurveyPageBloc>().add(AddSurveyPageEvent.surveyTitleUpdated(newValue));
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.message,
                  color: kPrimaryColor,
                  size: 66,
                ),
                Container(
                  height: 8,
                ),
                Text(tr('new_survey_step_one_general_description'), textAlign: TextAlign.center)
              ],
            ),
          )
        ],
      ),
    );
  }
}
