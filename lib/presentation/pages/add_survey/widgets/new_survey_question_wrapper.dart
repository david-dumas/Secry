import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/domain/surveys/model/option_for_closed_question.dart';
import 'package:secry/domain/surveys/question_type.dart';
import 'package:secry/presentation/pages/add_survey/widgets/choose_question_type.dart';
import 'package:secry/presentation/pages/add_survey/widgets/closed_question_options_section.dart';
import 'package:secry/presentation/pages/add_survey/widgets/delete_question_button.dart';
import 'package:secry/presentation/pages/add_survey/widgets/question_text_input.dart';
import 'package:secry/presentation/pages/add_survey/widgets/question_wrapper_title_description_section.dart';

import '../../../../application/add_survey/add_survey_page_bloc.dart';
import '../../../../constants.dart';

class NewSurveyQuestionWrapper extends StatefulWidget {
  final int questionIndex;
  final QuestionType questionType;
  final double bottomMargin;
  final String questionText;
  final List<OptionForClosedQuestion>? optionsIfAvailable;

  final Function(QuestionType newQuestionType) questionTypeUpdated;
  final Function questionDeleted;

  NewSurveyQuestionWrapper(
      {Key? key,
      required this.questionIndex,
      required this.questionType,
      required this.bottomMargin,
      required this.questionText,
      this.optionsIfAvailable = null,
      required this.questionTypeUpdated,
      required this.questionDeleted})
      : super(key: key);

  @override
  State<NewSurveyQuestionWrapper> createState() => _NewSurveyQuestionWrapperState();
}

class _NewSurveyQuestionWrapperState extends State<NewSurveyQuestionWrapper> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _questionEditingController = TextEditingController();
  final maximumQuestionLength = 64; // TODO load from remote config

  @override
  void initState() {
    _questionEditingController.text = widget.questionText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuestionWrapperTitleDescriptionSection(questionIndex: widget.questionIndex),
            Visibility(
              visible: widget.questionIndex > 0,
              child: DeleteQuestionButton(questionIndex: widget.questionIndex, questionDeleted: widget.questionDeleted),
            )
          ],
        ),
        Container(height: 12),
        ChooseQuestionType(
          currentQuestionType: widget.questionType,
          questionTypeChosen: (QuestionType questionType) {
            widget.questionTypeUpdated(questionType);
          },
        ),
        Container(height: 12),
        QuestionTextInput(
          formKey: _formKey,
          questionEditingController: _questionEditingController,
          maximumQuestionLength: maximumQuestionLength,
          questionTextUpdated: (newValue) {
            context
                .read<AddSurveyPageBloc>()
                .add(AddSurveyPageEvent.questionTextUpdatedForQuestionIndex(widget.questionIndex, newValue));
          },
        ),
        Container(height: 12),
        Visibility(
          visible: widget.questionType == QuestionType.closedQuestion,
          child: ClosedQuestionOptionsSection(
            questionIndex: widget.questionIndex,
            options: widget.optionsIfAvailable ?? [],
          ),
        ),
        Container(height: widget.bottomMargin)
      ],
    );
  }
}
