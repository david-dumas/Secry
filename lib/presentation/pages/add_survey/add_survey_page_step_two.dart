import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              itemCount: state.questions.length == 0 ? 1 : state.questions.length,
              itemBuilder: (context, index) {
                return NewSurveyQuestionWrapper(
                  questionIndex: index,
                  questionType: state.questions[index].questionType,
                  questionText: state.questions[index].text,
                  bottomMargin: 50.0,
                  questionTypeUpdated: (newQuestionType) {
                    context
                        .read<AddSurveyPageBloc>()
                        .add(AddSurveyPageEvent.questionTypeChangedForQuestionIndex(index, newQuestionType));
                  },
                  questionDeleted: () {
                    context.read<AddSurveyPageBloc>().add(AddSurveyPageEvent.questionDeleted(index));
                  },
                );
              }));
    });
  }
}
