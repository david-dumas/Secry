part of 'filter_survey_bloc.dart';

@freezed
class FilterSurveyState with _$FilterSurveyState {
  const factory FilterSurveyState(
      {required DropdownType sortByValue,
      required double numberOfVotesLowerBound,
      required double numberOfVotesUpperBound,
      required QuestionTypeEnum questionType,
      required double initialNumberOfVotesLowerBound,
      required double initialNumberOfVotesUpperBound}) = _FilterSurveyState;

  factory FilterSurveyState.initial() => FilterSurveyState(
        sortByValue: DropdownType.date,
        numberOfVotesLowerBound: 1.0,
        numberOfVotesUpperBound: 20.0,
        initialNumberOfVotesLowerBound: 1.0,
        initialNumberOfVotesUpperBound: 20.0,
        questionType: QuestionTypeEnum.allQuestions
      );
}
