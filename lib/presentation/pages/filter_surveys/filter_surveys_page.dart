import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secry/application/filter_survey/filter_survey_bloc.dart';
import 'package:secry/domain/surveys/model/question_type_enum.dart';
import 'package:secry/domain/surveys/model/sort_by_type.dart';
import 'package:secry/presentation/pages/filter_surveys/widgets/bottom_navigation_section.dart';
import 'package:secry/presentation/pages/filter_surveys/widgets/custom_range_slider.dart';
import 'package:secry/presentation/pages/filter_surveys/widgets/question_type.dart';
import 'package:secry/presentation/widgets/bars/appbar_icon_type.dart';
import 'package:secry/presentation/widgets/bars/general_appbar.dart';

import '../../../constants.dart';
import '../../../injection.dart';

class FilterSurveysPage extends StatefulWidget {
  const FilterSurveysPage({Key? key}) : super(key: key);

  @override
  State<FilterSurveysPage> createState() => _FilterSurveysPageState();
}

class _FilterSurveysPageState extends State<FilterSurveysPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FilterSurveyBloc>()..add(const FilterSurveyEvent.initialized()),
      child: BlocBuilder<FilterSurveyBloc, FilterSurveyState>(
        builder: (context, state) {
          return Scaffold(
            appBar: GeneralAppbar(
              title: tr('filter_surveys_title'),
              isSubpage: true,
              backgroundColor: globalWhite,
              isShowingBottomBorder: true,
              icon: AppbarIconType.close,
              trailingGestureWithIcon: GestureDetector(
                  onTap: () {},
                  child: TextButton(
                      onPressed: () {
                        context.read<FilterSurveyBloc>().add(FilterSurveyEvent.resetExecuted());
                      },
                      child: Text(tr('filter_surveys_reset')),
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(40, 30),
                          foregroundColor: kDarkGrayTextColor,
                          alignment: Alignment.center))),
            ),
            body: Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: pagePaddingAllSides,
                    child: Form(
                      child: SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tr('filter_surveys_sort_by'),
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium)),
                              SizedBox(height: marginSmall),
                              ButtonTheme(
                                alignedDropdown: true,
                                child: DropdownButtonFormField(
                                    onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
                                    isExpanded: true,
                                    dropdownColor: kLightGray,
                                    icon: Icon(Icons.expand_more),
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(0, 16.0, 8.0, 16.0),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(kButtonRadiusXxs),
                                            borderSide: BorderSide(width: 1, style: BorderStyle.solid))),
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(kButtonRadiusXxs),
                                    onChanged: (newType) {
                                      if(newType is SortByType) {
                                        context
                                            .read<FilterSurveyBloc>()
                                            .add(FilterSurveyEvent.sortByValueUpdated(newType));
                                      }
                                    },
                                    value: state.sortByValue,
                                    items: [
                                      DropdownMenuItem(child: Text(tr('filter_surveys_dropdown_date')), value: SortByType.date),
                                      DropdownMenuItem(child: Text(tr('filter_surveys_dropdown_alphabetic')), value: SortByType.alphabetic),
                                      DropdownMenuItem(child: Text(tr('filter_surveys_dropdown_number_of_votes')), value: SortByType.numberOfVotes),
                                      DropdownMenuItem(child: Text(tr('filter_surveys_dropdown_number_of_questions')), value: SortByType.numberOfQuestions),
                                    ]),
                              ),
                              SizedBox(height: marginLarge),
                              Text(tr('filter_surveys_number_of_votes'),
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium)),
                              SizedBox(height: marginSmall),
                              Text(
                                  '${state.initialNumberOfVotesLowerBound.round()} - ${state.initialNumberOfVotesUpperBound.round()}+',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: fontSizeMedium, color: kPrimaryColor)),
                              SizedBox(height: marginSmall),
                              CustomRangeSlider(
                                startValue: state.numberOfVotesLowerBound,
                                endValue: state.numberOfVotesUpperBound,
                                initialStartValue: state.initialNumberOfVotesLowerBound,
                                initialEndValue: state.initialNumberOfVotesUpperBound,
                                handleChange: (double lowerBound, double upperBound) {
                                  context
                                      .read<FilterSurveyBloc>()
                                      .add(FilterSurveyEvent.numberOfVotesUpdated(lowerBound, upperBound));
                                },
                              ),
                              SizedBox(height: marginSmall),
                              Divider(thickness: 1),
                              SizedBox(height: marginLarge),
                              Text(tr('filter_surveys_question_type_title'),
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSizeMedium)),
                              SizedBox(height: marginLarge),
                              QuestionType(
                                  title: tr('filter_surveys_question_type_all_questions_title'),
                                  subtitle: tr('filter_surveys_question_type_all_questions_subtitle'),
                                  questionTypeOfWidget: QuestionTypeEnum.allQuestions,
                                  selectedQuestionType: state.questionType,
                                  questionTypeUpdated: (QuestionTypeEnum newValue) {
                                    context.read<FilterSurveyBloc>().add(FilterSurveyEvent.questionTypeUpdated(newValue));
                                  },
                              ),
                              SizedBox(height: marginLarge),
                              QuestionType(
                                  title: tr('filter_surveys_question_type_closed_questions_title'),
                                  subtitle: tr('filter_surveys_question_type_closed_questions_subtitle'),
                                  questionTypeOfWidget: QuestionTypeEnum.closedQuestions,
                                  selectedQuestionType: state.questionType,
                                  questionTypeUpdated: (QuestionTypeEnum newValue) {
                                    context.read<FilterSurveyBloc>().add(FilterSurveyEvent.questionTypeUpdated(newValue));
                                  },
                              ),
                              SizedBox(height: marginLarge),
                              QuestionType(
                                  title: tr('filter_surveys_question_type_open_questions_title'),
                                  subtitle: tr('filter_surveys_question_type_open_questions_subtitle'),
                                  questionTypeOfWidget: QuestionTypeEnum.openQuestions,
                                  selectedQuestionType: state.questionType,
                                  questionTypeUpdated: (QuestionTypeEnum newValue) {
                                    context.read<FilterSurveyBloc>().add(FilterSurveyEvent.questionTypeUpdated(newValue));
                                  },
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                BottomNavigationSection()
              ],
            ),
          );
        },
      ),
    );
  }
}
