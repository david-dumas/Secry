import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/domain/general/survey_row_info.dart';

import '../../../../application/surveys/surveys_bloc.dart';
import '../../../../constants.dart';
import '../../../../domain/general/general_list_cell_info_item.dart';
import '../../../../domain/general/survey_questions_cell_info_item.dart';
import '../../../../domain/surveys/survey_questions_info.dart';
import '../../../../injection.dart';
import '../../../widgets/bars/general_appbar.dart';
import '../../general/widgets/general_list_cell.dart';
import '../../general/widgets/survey_list_cell.dart';

class RespondToSurveyPage extends StatelessWidget {
  final String title;
  final String groupId;

  const RespondToSurveyPage(
      {Key? key, required this.title, required this.groupId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SurveyBloc>()
        ..add(SurveysEvent.initialized(this.groupId)),
      child: BlocBuilder<SurveyBloc, SurveysState>(
        builder: (context, state) {
          print(context);
          print(state);
          return Scaffold(
            appBar: GeneralAppbar(
              title: this.title,
              isSubpage: true,
              backgroundColor: globalWhite,
            ),
            body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: state.SurveyQuestionsInfo.length,
            itemBuilder: (context, index) {
                return SurveyListCell(
                  listCellInfoItem: SurveyQuestionCellInfoItem(
                      id: state.SurveyQuestionsInfo[index].questionId,
                      title: state.SurveyQuestionsInfo[index].questiontitle,
                      questions: state.SurveyQuestionsInfo[index].questiontype),
                );
            },

          ),
          );
          ;
        },
      ),
    );
  }
}
