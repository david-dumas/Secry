import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/domain/surveys/model/option_for_closed_question.dart';
import 'package:uuid/uuid.dart';

import '../../../../application/add_survey/add_survey_page_bloc.dart';
import '../../../../constants.dart';

class ClosedQuestionOptionsSection extends StatefulWidget {
  final int questionIndex;
  final List<OptionForClosedQuestion> options;

  const ClosedQuestionOptionsSection({Key? key, required this.questionIndex, required this.options}) : super(key: key);

  @override
  State<ClosedQuestionOptionsSection> createState() => _ClosedQuestionOptionsSectionState();
}

class _ClosedQuestionOptionsSectionState extends State<ClosedQuestionOptionsSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final maximumOptionLength = 64; // TODO load from remote config

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddSurveyPageBloc, AddSurveyPageState>(
      builder: (context, state) {
        return Column(
          children: [
            Form(
              key: _formKey,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.options.length,
                  itemBuilder: (context, optionIndex) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 12.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              key: Key(
                                  "${widget.options.asMap().containsKey(optionIndex) ? widget.options[optionIndex].id : UniqueKey()}"),
                              initialValue: widget.options.asMap().containsKey(optionIndex)
                                  ? widget.options[optionIndex].text
                                  : '',
                              autofocus: false,
                              autocorrect: false,
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              minLines: 1,
                              decoration: InputDecoration(
                                fillColor: globalWhite,
                                filled: true,
                                suffixText:
                                    "${max(0, maximumOptionLength - (widget.options.asMap().containsKey(optionIndex) ? widget.options[optionIndex].text.length : 0))}",
                                hintText: tr('survey_option_hint_text'),
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
                                LengthLimitingTextInputFormatter(maximumOptionLength),
                              ],
                              validator: (String? value) {
                                if (value == null) {
                                  return null;
                                }
                                if (value.isEmpty) {
                                  return tr('warning_field_is_empty');
                                } else if (value.length > maximumOptionLength) {
                                  return tr('warning_too_many_characters');
                                }
                                return null;
                              },
                              onChanged: (newValue) {
                                context.read<AddSurveyPageBloc>().add(AddSurveyPageEvent.optionUpdatedForQuestionIndex(
                                    widget.questionIndex,
                                    optionIndex,
                                    widget.options.asMap().containsKey(optionIndex)
                                        ? widget.options[optionIndex].id
                                        : Uuid().v4(),
                                    newValue));
                              },
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            color: kMediumGrayV2,
                            onPressed: () {
                              context.read<AddSurveyPageBloc>().add(
                                  AddSurveyPageEvent.optionDeletedForQuestionIndex(widget.questionIndex, optionIndex));
                            },
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                child: Text(
                  tr('action_add_option'),
                  style: TextStyle(fontSize: 16, color: kPrimaryColor),
                ),
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kButtonRadiusXxs),
                    ),
                    side: BorderSide(
                      width: 1.0,
                      color: kPrimaryColor,
                    ),
                    backgroundColor: globalWhite),
                onPressed: () {
                  context
                      .read<AddSurveyPageBloc>()
                      .add(AddSurveyPageEvent.optionAddedForQuestionIndex(widget.questionIndex));
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
