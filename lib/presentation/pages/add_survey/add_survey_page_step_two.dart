import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/domain/surveys/model/closed_question.dart';
import 'package:secry/domain/surveys/model/option_for_closed_question.dart';
import 'package:secry/domain/surveys/model/question.dart';
import 'package:secry/domain/surveys/question_type.dart';
import 'package:secry/presentation/pages/add_survey/widgets/new_survey_question_wrapper.dart';

import '../../../application/add_survey/add_survey_page_bloc.dart';

class AddSurveyPageStepTwo extends StatelessWidget {
  const AddSurveyPageStepTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddSurveyPageBloc, AddSurveyPageState>(builder: (context, state) {
      return Padding(
          padding: EdgeInsets.only(
              top: 20.0,
              right: 20,
              bottom: state.questions.length == 0 ? 100.0 : MediaQuery.of(context).size.height * 0.5,
              left: 20.0),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.questions.length,
              itemBuilder: (context, index) {
                return NewSurveyQuestionWrapper(
                  question: state.questions[index],
                  questionIndex: index,
                  questionType: state.questions.asMap().containsKey(index)
                      ? state.questions[index].questionType
                      : QuestionType.openQuestion,
                  questionText: state.questions.asMap().containsKey(index) ? state.questions[index].text : '',
                  optionsIfAvailable: state.questions.asMap().containsKey(index)
                      ? (state.questions[index].questionType == QuestionType.closedQuestion
                          ? (state.questions[index] as ClosedQuestion).options
                          : [])
                      : [],
                  bottomMargin: 50.0,
                  questionTypeUpdated: (newQuestionType) {
                    context
                        .read<AddSurveyPageBloc>()
                        .add(AddSurveyPageEvent.questionTypeChangedForQuestionIndex(index, newQuestionType));
                  },
                  questionDeleted: () {
                    context
                        .read<AddSurveyPageBloc>()
                        .add(AddSurveyPageEvent.questionDeleted(state.questions[index].id));
                  },
                );
              }));
    });
  }
}
